package com.ctcs.market.controller;

import com.ctcs.market.entity.Prize;
import com.ctcs.market.service.MarketService;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

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
    public String prize(Prize prize, HttpServletResponse response) throws IOException {
        System.out.println("--------------"+prize.toString());
//        Prize prize1 = marketService.findMarket(prize);
//        System.out.println(prize1);
//        if(prize1 == null){
            System.out.println("*******if********");
            marketService.addPrize(prize);
            response.getWriter().write("保存成功！");
//        }else {
//            System.out.println("-------else--------");
//            marketService.updateMarket(prize);
//            response.getWriter().write("更改成功！");
//        }
        return null;
    }
}
