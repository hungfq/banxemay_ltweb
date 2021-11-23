package com.motor.dao;

import com.motor.model.User;

import java.util.List;

public interface IUserDAO {
    List<User> findAll();

    User findOne(int id);

    User login(String username, String password);

}
