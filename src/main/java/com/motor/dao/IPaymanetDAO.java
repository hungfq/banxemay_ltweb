package com.motor.dao;


import com.motor.model.Payment;

import java.util.List;

public interface IPaymanetDAO {
    List<Payment> findAll();

    Payment findOne(int id);
}
