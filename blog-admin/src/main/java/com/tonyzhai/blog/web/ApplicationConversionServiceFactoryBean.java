package com.tonyzhai.blog.web;

import com.tonyzhai.blog.domain.Topping;
import org.springframework.beans.factory.annotation.Configurable;
import org.springframework.core.convert.converter.Converter;
import org.springframework.format.FormatterRegistry;
import org.springframework.format.support.FormattingConversionServiceFactoryBean;
import org.springframework.roo.addon.web.mvc.controller.converter.RooConversionService;

@Configurable
/**
 * A central place to register application converters and formatters. 
 */
@RooConversionService
public class ApplicationConversionServiceFactoryBean extends FormattingConversionServiceFactoryBean {

	@Override
	protected void installFormatters(FormatterRegistry registry) {
		super.installFormatters(registry);
		// Register application converters and formatters
	}

	public Converter<Topping, String> getToppingToStringConverter() {
        return new Converter<com.tonyzhai.blog.domain.Topping, String>() {
            public String convert(Topping topping) {
                return new StringBuilder().append(topping.getName()).toString();
            }
        };
    }

	public Converter<Long, Topping> getIdToToppingConverter() {
        return new Converter<Long, com.tonyzhai.blog.domain.Topping>() {
            public com.tonyzhai.blog.domain.Topping convert(Long id) {
                return Topping.findTopping(id);
            }
        };
    }

	public Converter<String, Topping> getStringToToppingConverter() {
        return new Converter<String, com.tonyzhai.blog.domain.Topping>() {
            public com.tonyzhai.blog.domain.Topping convert(String id) {
                return getObject().convert(getObject().convert(id, Long.class), Topping.class);
            }
        };
    }

	public void installLabelConverters(FormatterRegistry registry) {
        registry.addConverter(getToppingToStringConverter());
        registry.addConverter(getIdToToppingConverter());
        registry.addConverter(getStringToToppingConverter());
    }

	public void afterPropertiesSet() {
        super.afterPropertiesSet();
        installLabelConverters(getObject());
    }
}
