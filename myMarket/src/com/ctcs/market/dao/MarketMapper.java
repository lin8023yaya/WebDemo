package com.ctcs.market.dao;

import com.ctcs.market.entity.MarketCode;
import com.ctcs.market.entity.Prize;
import com.ctcs.market.entity.Redpacket;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Map;

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
    List<MarketCode> record();

    //关闭开启状态
    int toClose(Integer id);
    //查看活动状态
    int findStatus(Integer id);
    //查看url的抽奖记录
    Map findCodelog(String code);
    //获取商品信息
    Map getProductData(MarketCode marketCode);
    //获取批次信息
    Map getBatchData(MarketCode marketCode);
    //查看该code是否参加活动
    List<MarketCode> ispromotion(MarketCode marketCode);
}
