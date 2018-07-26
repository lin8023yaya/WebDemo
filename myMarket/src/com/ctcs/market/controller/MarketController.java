package com.ctcs.market.controller;

import com.ctcs.market.entity.MarketCode;
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
import org.springframework.web.bind.annotation.*;

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

    @RequestMapping("marketCode")
    @ResponseBody
    public Result marketCode(MarketCode marketCode){
        Result result = null;
        marketCode.setStatus(0);
        result = marketService.marketCode(marketCode);
        return result;
    }
    @ResponseBody
    @RequestMapping("vrecord")
    public Result toVrecord(Long vendorId,HttpServletRequest request){
        Result result = null;
        try {
            result = marketService.toVrecord(vendorId);
            List<MarketCode> marketCodes = (List<MarketCode>) result.getData();

            request.getSession().setAttribute("vrecord",marketCodes);
            System.out.println(marketCodes);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return result;
    }
    @ResponseBody
    @RequestMapping("apply")
    public Result toApply(Long vendorId,HttpServletRequest request){
        Result result = null;
        try {
            result = marketService.toApply(vendorId);
            List<MarketCode> marketCodes = (List<MarketCode>) result.getData();

            request.getSession().setAttribute("graprove",marketCodes);
            System.out.println(marketCodes);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return result;
    }
    @ResponseBody
    @RequestMapping("pass")
    public Result pass(int id){
        Result result = null;
        result = marketService.pass(id);
        return result;
    }
    @ResponseBody
    @RequestMapping("record")
    public Result record(HttpServletRequest request){
        Result result = null;
        try {
            result = marketService.record();
            List<MarketCode> marketCodes = (List<MarketCode>) result.getData();

            request.getSession().setAttribute("record",marketCodes);
            System.out.println(marketCodes);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return result;
    }
    @ResponseBody
    @RequestMapping("close")
    public Result close(Integer id){
        Result result = null;
        int status = marketService.findStatus(id);
        System.out.println(status);
        if (status == 1) {
            result = marketService.toClose(id);
        }else if(status == 2){
            result = marketService.pass(id);
        }

        return result;
    }

    @ResponseBody
    @RequestMapping("ispromotion")
    public Result ispromotion(String code){
        Result result = new Result();
        Map status = marketService.findCodelog(code);
        Long typeId = Long.valueOf(code.substring(0,12),16);
        Long id = Long.valueOf(code.substring(12,20),16);
        String table = "t_busi_pa"+Long.toHexString(typeId);

        MarketCode marketCode = new MarketCode();
        marketCode.setTable(table);
        marketCode.setArrs(id);
        Map map = marketService.getProductData(marketCode);
        Long batchId = (Long) map.get("BATCHID");
        Long productId = (Long) map.get("REFTYPEID");
        System.out.println(batchId+" "+productId);
        marketCode.setBatchId(batchId);
        marketCode.setProductId(productId);
        String batchTable = "t_busi_batch"+Long.toHexString(productId);
        marketCode.setBatchTable(batchTable);

        Map map1 = marketService.getBatchData(marketCode);
        String batch = (String) map1.get("VENDORBATCHID");
        long vendorId = (Long) map1.get("VENDORID");
        marketCode.setBatch(batch);
        marketCode.setVendorId(vendorId);
        System.out.println(batch+" "+vendorId);

        List<MarketCode> list = marketService.ispromotion(marketCode);
        Prize prize = new Prize();
        System.out.println(list.size());
        int s = list.size();
        result.setMessage(id+ " " + table);
        return result;
    }

    //public Result






}
