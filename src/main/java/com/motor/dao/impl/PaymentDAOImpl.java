package com.motor.dao.impl;

import com.motor.dao.IPaymanetDAO;
import com.motor.mapper.AbstractDAO;
import com.motor.mapper.PaymentMapper;
import com.motor.model.Payment;

import java.util.List;

public class PaymentDAOImpl extends AbstractDAO<Payment> implements IPaymanetDAO {
    @Override
    public List<Payment> findAll() {
        String sql = "select * from PaymentMethods";
        return query(sql, new PaymentMapper());
    }

    @Override
    public Payment findOne(int id) {
        String sql = "select * from PaymentMethods where id = ?";
        List<Payment> payments = query(sql, new PaymentMapper(), id);
        return payments.isEmpty() ? null : payments.get(0);
    }
}
