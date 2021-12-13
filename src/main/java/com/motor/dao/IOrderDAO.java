package com.motor.dao;

import com.motor.model.Order;
import com.motor.model.User;

import java.util.List;

public interface IOrderDAO {
    List<Order> findAll();

    List<Order> findAllBySeller(int seller_id);

    Order findOne(int id);

    void updateStatus(Order order);

    long countAll();

    int countBySeller(int seller_id);

    long orderMoneyTotal();

    long orderMoneyTotalBySeller(int seller_id);

    long orderMoneyAveragesBySeller(int seller_id);

    List<User> findTopCustomer();

    List<User> findUserBySeller(int seller_id);

    long getRevenueBySellerInMonth(int seller_id, int month, int year);

    int countOrderBySellerInMonth(int seller_id, int month, int year);
}
