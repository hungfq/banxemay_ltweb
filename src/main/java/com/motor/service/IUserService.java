package com.motor.service;

import com.motor.model.User;

public interface IUserService {
    User login(String username, String password);
}
