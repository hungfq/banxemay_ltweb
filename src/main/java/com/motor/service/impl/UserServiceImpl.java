package com.motor.service.impl;

import com.motor.dao.IUserDAO;
import com.motor.dao.impl.UserDAOImpl;
import com.motor.model.User;
import com.motor.service.IUserService;

public class UserServiceImpl implements IUserService {
    //    @Inject
    IUserDAO userDAO = new UserDAOImpl();

    @Override
    public User login(String username, String password) {
        return userDAO.login(username, password);
    }
}
