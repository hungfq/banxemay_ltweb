package com.motor.dao.impl;

import com.motor.dao.IOrderDetailDAO;
import com.motor.mapper.AbstractDAO;
import com.motor.mapper.OrderDetailMapper;
import com.motor.model.OrderDetail;

import java.util.List;

public class OrderDetailDAOImpl extends AbstractDAO<OrderDetail> implements IOrderDetailDAO {

    @Override
    public List<OrderDetail> findAll() {
        String sql = "select * from OrderDetails";
        return query(sql, new OrderDetailMapper());
    }

    @Override
    public OrderDetail findOne(int id) {
        String sql = "select * from OrderDetails where id = ?";
        List<OrderDetail> orderDetails = query(sql, new OrderDetailMapper(), id);
        return orderDetails.isEmpty() ? null : orderDetails.get(0);
    }
}
