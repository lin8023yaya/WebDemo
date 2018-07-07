package com.ctcs.market.dao;

import com.ctcs.market.entity.Redpacket;
import org.springframework.stereotype.Repository;

/**
 * @ClassName: RedpacketMapper
 * @author: Mr.Li
 * @create: 2018-07-07 23:06
 **/
@Repository
public interface RedpacketMapper {

    int redSet(Redpacket redpacket);
}
