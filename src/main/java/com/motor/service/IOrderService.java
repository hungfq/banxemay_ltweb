package com.motor.service;

import com.motor.model.Order;

import java.util.List;

public interface IOrderService {
    List<Order> findAll();

    List<Order> findAllBySeller(int seller_id);

    Order findOne(int id);
}
