package com.motor.service;

import com.motor.model.Order;

import java.util.List;

public interface IOrderService {
    List<Order> findAll();

    Order findOne(int id);
}
