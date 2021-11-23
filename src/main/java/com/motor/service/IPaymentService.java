package com.motor.service;

import com.motor.model.Payment;

import java.util.List;

public interface IPaymentService {
    List<Payment> findAll();

    Payment findOne(int id);
}
