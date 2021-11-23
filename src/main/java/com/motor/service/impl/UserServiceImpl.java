package com.motor.service.impl;

import com.motor.dao.IUserDAO;
import com.motor.dao.impl.UserDAOImpl;
import com.motor.model.User;
import com.motor.service.IUserService;

import java.util.List;

public class UserServiceImpl implements IUserService {
    //    @Inject
    IUserDAO userDAO = new UserDAOImpl();

    @Override
    public List<User> findAll() {
        return userDAO.findAll();
    }

    @Override
    public User findOne(int id) {
        return userDAO.findOne(id);
    }

    @Override
    public User login(String username, String password) {
        return userDAO.login(username, password);
    }
}
