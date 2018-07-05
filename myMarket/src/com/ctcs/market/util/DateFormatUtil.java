package com.ctcs.market.util;

import java.text.SimpleDateFormat;
import java.util.Date;

/**
 * @ClassName DateFormatUtil
 * @Author lin
 * @Date 2018/7/5 16:55
 * @Version 1.0
 **/
public class DateFormatUtil {

        private final static SimpleDateFormat SDF_DATE = new SimpleDateFormat("yyyy-MM-dd");
        private final static SimpleDateFormat SDF_TIME = new SimpleDateFormat("HH:mm:ss");
        private final static SimpleDateFormat SDF_DB_DATE = new SimpleDateFormat("yyyyMMdd");
        public static  String getDateTime(Date date){
            return SDF_DATE.format(date) + " " + SDF_TIME.format(date);
        }
        public static  String getDateTime1(Date date){
            return SDF_DATE.format(date) ;
        }
        public static String getDate(Date date) {
            return SDF_DATE.format(date);
        }

        public static String getDBDate(Date date){
            return SDF_DB_DATE.format(date);
        }
}
