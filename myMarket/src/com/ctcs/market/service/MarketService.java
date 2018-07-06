package com.ctcs.market.service;

import com.ctcs.market.dao.MarketMapper;
import com.ctcs.market.entity.Prize;
import com.ctcs.market.entity.Result;
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
@Transactional(propagation = Propagation.NOT_SUPPORTED, readOnly = true)
public class MarketService {
    @Resource
    private MarketMapper marketMapper;

    public Result addPrize(Prize prize) {
        Result result = new Result();

        System.out.println("service");
        int rowAffect = marketMapper.addPrize(prize);

        if (rowAffect == 1) {
            result.setStatus(1);
            result.setMessage("保存成功！");
        } else {
            result.setStatus(1);
            result.setMessage("保存成功！");
        }
        return result;
    }

    public String showPrize(Prize prize) {

        Prize p = new Prize();
        try {
            p = marketMapper.showPrize(prize);
        } catch (Exception e) {
            e.printStackTrace();
        }
        if (p != null) {
            return "点击进行查看！";
        } else {
            return "请联系后台！";
        }
    }
}
