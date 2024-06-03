package com.Utils;

import org.springframework.core.convert.converter.Converter;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

public class DateConverter implements Converter<String,Date> {

    SimpleDateFormat sdf=new SimpleDateFormat("yyyy年mm月dd日");

    @Override
    public Date convert(String s) {
        Date date=null;
        try {

             date = sdf.parse(s);
        } catch (ParseException e) {
            e.printStackTrace();
        }
        return date;
    }
}
