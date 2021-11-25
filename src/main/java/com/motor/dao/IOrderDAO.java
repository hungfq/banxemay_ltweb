package com.motor.dao;

import com.motor.model.Order;
import com.motor.model.User;

import java.util.List;

public interface IOrderDAO {
    List<Order> findAll();

    List<Order> findAllBySeller(int seller_id);

    Order findOne(int id);

    void updateStatus(Order order);

    int countBySeller(int seller_id);

    int orderMoneyTotal(int seller_id);

    int orderMoneyAverages(int seller_id);

    List<User> findUserBySeller(int seller_id);

    int getRevenueBySellerInMonth(int seller_id, int month, int year);

    int countOrderBySellerInMonth(int seller_id, int month, int year);
}
