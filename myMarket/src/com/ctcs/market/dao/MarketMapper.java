package com.ctcs.market.dao;

import com.ctcs.market.entity.MarketCode;
import com.ctcs.market.entity.Prize;
import com.ctcs.market.entity.Redpacket;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository()
public interface MarketMapper {
    //增加营销活动
    int addPrize(Prize prize);
    //查看企业端增加的营销活动
    Prize showPrize(Prize prize);
    //更新最后的操作时间
    int updateEndTime(Prize prize);
    //删除企业的配置活动
    int delPrize(Prize prize);
    //增加固定红包活动
    int redSet(Redpacket redpacket);
    //更新修改的营销活动
    int updatePrize(Prize prize);
    //企业申请活动
    int marketCode(MarketCode marketCode);
    //企业查看已经申请好的活动包括使用的和已经结束的
    List<MarketCode> toVrecord(Long vendorID);
    //管理端查看正在申请的活动
    List<MarketCode> toApply(Long vendorId);
    //管理端通过审批+
    int pass(int id);

    //管理查看所有活动
    MarketCode record();
}
