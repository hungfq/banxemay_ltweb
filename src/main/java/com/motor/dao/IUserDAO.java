package com.motor.dao;

import com.motor.model.User;

public interface IUserDAO {
    User login(String username, String password);
}
