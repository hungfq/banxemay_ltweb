package com.motor.service.impl;

import com.motor.dao.IOrderDAO;
import com.motor.dao.impl.OrderDAOImpl;
import com.motor.model.Order;
import com.motor.service.IOrderService;

import java.util.List;

public class OrderServiceImpl implements IOrderService {
    IOrderDAO orderDAO = new OrderDAOImpl();
    @Override
    public List<Order> findAll() {
        return orderDAO.findAll();
    }

    @Override
    public List<Order> findAllBySeller(int seller_id) {
        return orderDAO.findAllBySeller(seller_id);
    }

    @Override
    public Order findOne(int id) {
        return orderDAO.findOne(id);
    }
}
