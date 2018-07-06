package com.ctcs.market.dao;

import com.ctcs.market.entity.Prize;
import org.springframework.stereotype.Repository;

@Repository()
public interface MarketMapper {
    //增加营销活动
    int addPrize(Prize prize);
    //查看企业端增加的营销活动
    Prize showPrize(Prize prize);
}
