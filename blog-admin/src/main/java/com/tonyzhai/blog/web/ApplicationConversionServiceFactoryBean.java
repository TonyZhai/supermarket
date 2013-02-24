package com.tonyzhai.blog.web;

import com.tonyzhai.blog.domain.Article;
import com.tonyzhai.blog.service.ArticleService;
import org.springframework.beans.factory.annotation.Configurable;
import org.springframework.core.convert.converter.Converter;
import org.springframework.format.FormatterRegistry;
import org.springframework.format.support.FormattingConversionServiceFactoryBean;
import org.springframework.roo.addon.web.mvc.controller.converter.RooConversionService;

import javax.annotation.Resource;

@Configurable
/**
 * A central place to register application converters and formatters. 
 */
@RooConversionService
public class ApplicationConversionServiceFactoryBean extends FormattingConversionServiceFactoryBean {

    @Resource
    private ArticleService articleService;

	@Override
	protected void installFormatters(FormatterRegistry registry) {
		super.installFormatters(registry);
		// Register application converters and formatters
	}

	public Converter<Article, String> getArticleToStringConverter() {
        return new Converter<com.tonyzhai.blog.domain.Article, String>() {
            public String convert(Article article) {
                return new StringBuilder().append(article.getTitle()).toString();
            }
        };
    }

	public Converter<String, Article> getIdToArticleConverter() {
        return new Converter<String, Article>() {
            public com.tonyzhai.blog.domain.Article convert(String id) {
                return null;
            }
        };
    }

	public Converter<String, Article> getStringToArticleConverter() {
        return new Converter<String, Article>() {
            public Article convert(String id) {
                return getObject().convert(getObject().convert(id, String.class), Article.class);
            }
        };
    }

	public void installLabelConverters(FormatterRegistry registry) {
        registry.addConverter(getArticleToStringConverter());
        registry.addConverter(getIdToArticleConverter());
        registry.addConverter(getStringToArticleConverter());
    }

	public void afterPropertiesSet() {
        super.afterPropertiesSet();
        installLabelConverters(getObject());
    }
}
