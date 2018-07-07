package com.ctcs.market.service;

import com.ctcs.market.dao.RedpacketMapper;
import com.ctcs.market.entity.Redpacket;
import com.ctcs.market.entity.Result;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

/**
 * @ClassName: RedpacketService
 * @author: Mr.Li
 * @create: 2018-07-07 23:03
 **/
@Service
public class RedpacketService {
    @Resource
    private RedpacketMapper redpacketMapper;

    public Result redSet(Redpacket redpacket) {
        Result result = new Result();
        int rowAffect = redpacketMapper.redSet(redpacket);
        if (rowAffect == 1) {
            result.setStatus(1);
            result.setMessage("设置成功!");
        }else {
            result.setStatus(1);
            result.setMessage("请联系后台工作人员!");
        }
        return result;
    }
}
