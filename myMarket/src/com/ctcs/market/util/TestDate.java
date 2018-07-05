package com.ctcs.market.util;

import java.util.Date;

/**
 * @ClassName: TestDate
 * @author: Mr.Li
 * @create: 2018-07-05 20:23
 **/
public class TestDate {
    public static void main(String[] args) {
        String time = DateFormatUtil.getDateTime(new Date());
        System.out.println(time);
    }
}
