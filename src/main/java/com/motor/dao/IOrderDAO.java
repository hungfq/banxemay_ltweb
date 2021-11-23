package com.motor.dao;

import com.motor.model.Order;

import java.util.List;

public interface IOrderDAO {
    List<Order> findAll();

    Order findOne(int id);
}
