package com.motor.service.impl;

import com.motor.dao.IPaymanetDAO;
import com.motor.dao.impl.PaymentDAOImpl;
import com.motor.model.Payment;
import com.motor.service.IPaymentService;

import java.util.List;

public class PaymentServiceImpl implements IPaymentService {
    IPaymanetDAO paymanetDAO = new PaymentDAOImpl();

    @Override
    public List<Payment> findAll() {
        return paymanetDAO.findAll();
    }

    @Override
    public Payment findOne(int id) {
        return paymanetDAO.findOne(id);
    }
}
