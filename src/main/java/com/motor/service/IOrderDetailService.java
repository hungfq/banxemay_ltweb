package com.motor.service;

import com.motor.model.OrderDetail;

import java.util.List;

public interface IOrderDetailService {
    List<OrderDetail> findAll();

    OrderDetail findOne(int id);
}
