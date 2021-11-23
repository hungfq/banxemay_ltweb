package com.motor.dao;


import com.motor.model.OrderDetail;

import java.util.List;

public interface IOrderDetailDAO {
    List<OrderDetail> findAll();

    OrderDetail findOne(int id);
}
