package com.ctcs.market.dao;

import com.ctcs.market.entity.Prize;
import org.springframework.stereotype.Repository;

@Repository()
public interface MarketMapper {
    //增加营销活动
    int addPrize(Prize prize);
}
