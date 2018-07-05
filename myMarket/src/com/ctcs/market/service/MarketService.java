package com.ctcs.market.service;

import com.ctcs.market.dao.MarketMapper;
import com.ctcs.market.entity.Prize;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;

/**
 * @ClassName MarketService
 * @Author lin
 * @Date 2018/7/3 14:50
 * @Version 1.0
 **/
@Service("marketService")
@Transactional(propagation = Propagation.NOT_SUPPORTED,readOnly = true)
public class MarketService {
    @Resource
    private MarketMapper marketMapper;


    /*public Prize findMarket(Prize prize) {
        marketMapper.
    }*/

    public String addPrize(Prize prize) {
        int resultS = 0;
        System.out.println(prize.toString() + "service");
        try {
            resultS = marketMapper.addPrize(prize);
        }catch (Exception e){
            e.printStackTrace();
        }

        if (resultS == 1) {
            return "保存成功！";
        } else {
            return "保存失败！";
        }
    }
}
