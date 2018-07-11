package com.ctcs.market.service;

import com.ctcs.market.dao.MarketMapper;
import com.ctcs.market.entity.MarketCode;
import com.ctcs.market.entity.Prize;
import com.ctcs.market.entity.Redpacket;
import com.ctcs.market.entity.Result;
import com.sun.org.apache.regexp.internal.RE;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.util.List;

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

    public Result showPrize(Prize prize) {
        Result result = new Result();
        Prize p = new Prize();
        try{
            p = marketMapper.showPrize(prize);
        }catch (Exception e){
            e.printStackTrace();
        }
        //System.out.println("2");
        if (p != null) {
            result.setStatus(1);
            result.setMessage("点击查看!");
            result.setData(p);
        } else {
            result.setStatus(0);
            result.setMessage("请联系后台!");
        }
        return result;
    }

    public Result updateEndTime(Prize prize) {
        //System.out.println("2-1");
        Result result =new Result();
        int rowAffect = 0;
        try {
            rowAffect = marketMapper.updateEndTime(prize);
        } catch (Exception e) {
            e.printStackTrace();
        }
        if (rowAffect == 1){
            result.setStatus(1);
            result.setMessage("时间更新成功!");
        }else {
            result.setStatus(0);
            result.setMessage("时间更新失败!");
        }
        return result;
    }

    public Result delPrize(Prize prize) {
        Result result = new Result();
        int rowAffect = marketMapper.delPrize(prize);
        if(rowAffect == 1){
            result.setMessage("删除成功!");
        }else {
            result.setMessage("请联系后台!");
        }
        return result;
    }


    public Result updatePrize(Prize prize) {
        Result result =new Result();
        int rowAffect = 0;
        try {
            rowAffect = marketMapper.updatePrize(prize);
        } catch (Exception e) {
            e.printStackTrace();
        }
        if (rowAffect == 1){
            result.setStatus(1);
            result.setMessage("数据更新成功!");
        }else {
            result.setStatus(0);
            result.setMessage("请联系后台!");
        }
        return result;
    }

    public Result marketCode(MarketCode marketCode) {
        Result result = new Result();
        int rowAffects = marketMapper.marketCode(marketCode);
        if (rowAffects == 1) {
            result.setStatus(1);
            result.setMessage("活动申请成功!");
        }else {
        result.setStatus(1);
        result.setMessage("请联系后台!");
        }
        return result;
    }


    public Result toVrecord(Long vendorID) {

        Result result = new Result();
        List<MarketCode> marketCodes = null;
        try {
            marketCodes = marketMapper.toVrecord(vendorID);
        } catch (Exception e) {
            e.printStackTrace();
        }
        if (marketCodes != null) {
            result.setStatus(1);
            result.setMessage("查询成功!");
            result.setData(marketCodes);
        }else{
            result.setStatus(0);
            result.setMessage("请联系后台");
        }
        return result;
    }


    public Result toApply(Long vendorId) {
        Result result = new Result();
        List<MarketCode> marketCodes = null;
        try {
            marketCodes = marketMapper.toApply(vendorId);
        } catch (Exception e) {
            e.printStackTrace();
        }
        if (marketCodes != null) {
            result.setStatus(1);
            result.setMessage("查询成功!");
            result.setData(marketCodes);
        }else{
            result.setStatus(0);
            result.setMessage("请联系后台");
        }
        return result;
    }

    public Result pass(int id) {
        Result result = new Result();
        int rowAffect = marketMapper.pass(id);
        if (rowAffect == 1) {
            result.setStatus(1);
            result.setMessage("审批通过!");
        }else {
            result.setStatus(0);
            result.setMessage("请联系后台!");
        }
        return result;
    }

    public Result record() {
        Result result = new Result();
        List<MarketCode> marketCode = null;
        try {
            marketCode = (List<MarketCode>) marketMapper.record();
        } catch (Exception e) {
            e.printStackTrace();
        }
        if (marketCode != null) {
            result.setStatus(1);
            result.setMessage("查询成功!");
            result.setData(marketCode);
        }else {
            result.setStatus(0);
            result.setMessage("请联系后台!");
        }
        return result;
    }

    public Result toClose(Integer id) {
        Result result = new Result();
        int rowAffect = 0;
        try {
            rowAffect = marketMapper.toClose(id);
        } catch (Exception e) {
            e.printStackTrace();
        }
        if (rowAffect == 1) {
            result.setStatus(1);
            result.setMessage("更新成功!");
        }else {
            result.setStatus(0);
            result.setMessage("请联系后台!");
        }
        return result;
    }

    public int findStatus(Integer id) {
        int status = marketMapper.findStatus(id);
       return status;
    }
}
