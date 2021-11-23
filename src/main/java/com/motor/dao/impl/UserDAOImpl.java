package com.motor.dao.impl;

import com.motor.dao.IUserDAO;
import com.motor.mapper.AbstractDAO;
import com.motor.mapper.UserMapper;
import com.motor.model.User;

import java.util.List;

public class UserDAOImpl extends AbstractDAO<User> implements IUserDAO {
    @Override
    public List<User> findAll() {
        String sql = "select * from Users";
        return query(sql, new UserMapper());
    }

    @Override
    public User findOne(int id) {
        String sql = "select * from Users where id = ?";
        List<User> users = query(sql, new UserMapper(),id);
        return users.isEmpty() ? null : users.get(0);
    }

    @Override
    public User login(String username, String password) {
        String sql = "select * from Users where username = ? and password = ?";
        List<User> users = query(sql, new UserMapper(), username, password);
        return users.isEmpty() ? null : users.get(0);
    }

}
