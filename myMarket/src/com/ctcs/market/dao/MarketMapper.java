package com.ctcs.market.dao;

import com.ctcs.market.entity.Prize;
import com.ctcs.market.entity.Redpacket;
import org.springframework.stereotype.Repository;

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
}
