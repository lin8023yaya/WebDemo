package com.ctcs.market.controller;

import com.ctcs.market.entity.Prize;
import com.ctcs.market.entity.Redpacket;
import com.ctcs.market.entity.Result;
import com.ctcs.market.service.MarketService;
import com.ctcs.market.util.DateFormatUtil;
import org.json.JSONObject;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.*;

/**
 * @ClassName MarketController
 * @Author lin
 * @Date 2018/7/3 14:29
 * @Version 1.0
 **/
@Controller
@RequestMapping("market")
@Transactional
@SuppressWarnings("all")
public class MarketController {

    @Resource
    private MarketService marketService;

    @RequestMapping("/prize")
    @ResponseBody
    public Object prize(Prize prize) {

        Result result = null;
        System.out.println("--------------");
        result = marketService.showPrize(prize);
        System.out.println("1");
        if (result.getData() == null) {
            prize.setStartTime(DateFormatUtil.getDateTime(new Date()));
            prize.setEndTime((DateFormatUtil.getDateTime(new Date())));
            System.out.println("*******if********");
            try {
                result = marketService.addPrize(prize);
            } catch (Exception e) {
                e.printStackTrace();
            }

        } else {
            System.out.println("-------else--------");
            prize.setEndTime((DateFormatUtil.getDateTime(new Date())));
            result = marketService.updatePrize(prize);
        }
        return result;
    }

    @RequestMapping("/showPrize")
    @ResponseBody
    public Result showset(Prize prize,
                          HttpServletRequest request,
                          HttpServletResponse response) {
        Result result = null;
        prize.setEndTime(DateFormatUtil.getDateTime(new Date()));
        //System.out.println("1-1");
        this.marketService.updateEndTime(prize);
        try {
            result = marketService.showPrize(prize);
        } catch (Exception e) {
            e.printStackTrace();
        }
        List<Prize> showset = new ArrayList<>();
        Prize data = (Prize) result.getData();
        showset.add(data);
        //System.out.println("1-2");
        request.getSession().setAttribute("showset", showset);
        return result;
    }

    @RequestMapping("delPrize")
    @ResponseBody
    public Result delPrize(Prize prize, HttpServletRequest request) {
        Result result = null;
        result = marketService.delPrize(prize);
        return result;
    }




}
