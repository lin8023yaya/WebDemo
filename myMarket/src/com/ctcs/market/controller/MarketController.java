package com.ctcs.market.controller;

import com.ctcs.market.entity.Prize;
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
    public Object prize(Prize prize){

        Result result = null;
        prize.setStartTime(DateFormatUtil.getDateTime(new Date()));
        prize.setEndTime((DateFormatUtil.getDateTime(new Date())));
        System.out.println("--------------");
//        Prize prize1 = marketService.findMarket(prize);
//        System.out.println(prize1);
//        if(prize1 == null){
        System.out.println("*******if********");
        try {
            result = marketService.addPrize(prize);
        }catch (Exception e){
            e.printStackTrace();
        }

//        }else {
//            System.out.println("-------else--------");
//            marketService.updateMarket(prize);
//            response.getWriter().write("更改成功！");
//        }
        //System.out.println(jo.toString());
        //return jo.toString();
        //return "123";

        return result;
    }

    @RequestMapping("/showPrize")
    @ResponseBody
    public Object showset( Prize prize,
                          HttpServletRequest request,
                          HttpServletResponse response){
        JSONObject jo = new JSONObject();
        prize.setEndTime(DateFormatUtil.getDateTime(new Date()));
        //marketService.updateEndTime(prize);
        String result = marketService.showPrize(prize);
        List<Prize> showset = new ArrayList<>();
        showset.add(prize);

        try {
            request.getSession().setAttribute("showset",showset);
            jo.put("result",result);
        } catch (Exception e) {
            jo.put("result",result);
            e.printStackTrace();
        }
        return jo.toString();
    }
}
