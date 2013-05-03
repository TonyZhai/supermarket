package com.tonyzhai.shop.util.converter;import com.tonyzhai.shop.domain.base.support.exception.BaseException;import com.tonyzhai.shop.domain.base.support.exception.ExceptionCode;import com.tonyzhai.shop.util.Constant;import org.springframework.core.convert.converter.Converter;import java.text.ParseException;import java.text.SimpleDateFormat;import java.util.Date;/** * String to date converter * * @author Tony Zhai * @since 13-3-3 PM3:54 */public class StringToDateConverter implements Converter<String, Date> {    @Override    public Date convert(String source) {        try {            return new SimpleDateFormat(Constant.DATE_FORMAT).parse(source.toString());        } catch(ParseException e) {            throw new BaseException(ExceptionCode.CONVERT_DATE_ERROR.getCode(), e.getMessage());        }    }}