package com.motor.dao;

import com.motor.model.Order;

import java.util.List;

public interface IOrderDAO {
    List<Order> findAll();

    List<Order> findAllBySeller(int seller_id);

    Order findOne(int id);
    void updateStatus(Order order);
}
