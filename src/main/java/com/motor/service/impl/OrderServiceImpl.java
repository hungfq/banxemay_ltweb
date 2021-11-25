package com.motor.service.impl;

import com.motor.dao.IOrderDAO;
import com.motor.dao.impl.OrderDAOImpl;
import com.motor.model.Order;
import com.motor.model.User;
import com.motor.service.IOrderService;

import java.util.List;

public class OrderServiceImpl implements IOrderService {
    IOrderDAO orderDAO = new OrderDAOImpl();

    @Override
    public List<Order> findAll() {
        return orderDAO.findAll();
    }

    @Override
    public List<Order> findAllBySeller(int seller_id) {
        return orderDAO.findAllBySeller(seller_id);
    }

    @Override
    public Order findOne(int id) {
        return orderDAO.findOne(id);
    }

    @Override
    public void updateStatus(Order order) {
        orderDAO.updateStatus(order);
    }

    @Override
    public int countBySeller(int seller_id) {
        return orderDAO.countBySeller(seller_id);
    }

    @Override
    public long orderMoneyTotal(int seller_id) {
        return orderDAO.orderMoneyTotal(seller_id);
    }

    @Override
    public int orderMoneyAverages(int seller_id) {
        return orderDAO.orderMoneyAverages(seller_id);
    }

    @Override
    public List<User> findUserBySeller(int seller_id) {
        return orderDAO.findUserBySeller(seller_id);
    }

    @Override
    public long getRevenueBySellerInMonth(int seller_id, int month, int year) {
        return orderDAO.getRevenueBySellerInMonth(seller_id, month, year);
    }

    @Override
    public int countOrderBySellerInMonth(int seller_id, int month, int year) {
        return orderDAO.countOrderBySellerInMonth(seller_id,month, year);
    }


}
