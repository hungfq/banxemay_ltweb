package com.motor.dao;

import com.motor.model.User;

import java.util.List;

public interface IUserDAO {
    List<User> findAll();

    User findOne(int id);

    User login(String username, String password);

    void updateInfo(User user);

    void updateImage(User user);

    void updatePassword(User user);
}
