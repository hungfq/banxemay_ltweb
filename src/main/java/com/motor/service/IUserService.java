package com.motor.service;

import com.motor.model.User;

import java.util.List;

public interface IUserService {
    List<User> findAll();
    User findOne(int id);
    User login(String username, String password);
}
