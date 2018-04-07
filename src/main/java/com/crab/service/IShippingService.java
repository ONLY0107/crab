package com.crab.service;

import com.github.pagehelper.PageInfo;
import com.crab.common.ServerResponse;
import com.crab.pojo.Shipping;

/**
 * Created by A
 */
public interface IShippingService {

    ServerResponse add(Integer userId, Shipping shipping);
    ServerResponse<String> del(Integer userId, Integer shippingId);
    ServerResponse update(Integer userId, Shipping shipping);
    ServerResponse<Shipping> select(Integer userId, Integer shippingId);
    ServerResponse<PageInfo> list(Integer userId, int pageNum, int pageSize);

}
