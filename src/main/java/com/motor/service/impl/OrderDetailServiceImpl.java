package com.motor.service.impl;

import com.motor.dao.IOrderDetailDAO;
import com.motor.dao.impl.OrderDetailDAOImpl;
import com.motor.model.OrderDetail;
import com.motor.service.IOrderDetailService;

import java.util.List;

public class OrderDetailServiceImpl implements IOrderDetailService {
    IOrderDetailDAO orderDetailDAO = new OrderDetailDAOImpl();
    @Override
    public List<OrderDetail> findAll() {
        return orderDetailDAO.findAll();
    }

    @Override
    public OrderDetail findOne(int id) {
        return orderDetailDAO.findOne(id);
    }
}
