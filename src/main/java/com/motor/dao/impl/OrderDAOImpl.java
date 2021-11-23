package com.motor.dao.impl;

import com.motor.dao.IOrderDAO;
import com.motor.mapper.AbstractDAO;
import com.motor.mapper.OrderMapper;
import com.motor.model.Order;

import java.util.List;

public class OrderDAOImpl extends AbstractDAO<Order> implements IOrderDAO {
    @Override
    public List<Order> findAll() {
        String sql = "select * from Orders";
        return query(sql, new OrderMapper());
    }

    @Override
    public Order findOne(int id) {
        String sql = "select * from Orders where id = ?";
        List<Order> order = query(sql, new OrderMapper(), id);
        return order.isEmpty() ? null : order.get(0);
    }
}
