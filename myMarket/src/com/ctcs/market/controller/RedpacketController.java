package com.ctcs.market.controller;

import com.ctcs.market.entity.Batchbound;
import com.ctcs.market.entity.MarketCode;
import com.ctcs.market.entity.Redpacket;
import com.ctcs.market.entity.Result;
import com.ctcs.market.service.RedpacketService;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;

/**
 * @ClassName: RedpacketController
 * @author: Mr.Li
 * @create: 2018-07-07 23:00
 **/
@Controller
@RequestMapping("redpacket")
@Transactional
@SuppressWarnings("all")
public class RedpacketController {
    @Resource
    private RedpacketService redpacketService;

    @ResponseBody
    @RequestMapping("/redSet")
    public Result redSet(Redpacket redpacket) {
        Result result = null;
        System.out.println(redpacket.toString());

        result = redpacketService.redSet(redpacket);
        return result;
    }
    @ResponseBody
    @RequestMapping("batchbound")
    public Result batchbound(Batchbound batchbound){
        Result result = null;
        System.out.println("ok");
        try {
            result = redpacketService.batchBound(batchbound);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return result;
    }
}