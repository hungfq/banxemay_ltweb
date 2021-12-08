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
        List<User> users = query(sql, new UserMapper(), id);
        return users.isEmpty() ? null : users.get(0);
    }

    @Override
    public User findOneWithUsername(String username) {
        String sql = "select * from Users where username = ?";
        List<User> users = query(sql, new UserMapper(), username);
        return users.isEmpty() ? null : users.get(0);
    }

    @Override
    public User findOneWithEmail(String email) {
        String sql = "select * from Users where mail = ?";
        List<User> users = query(sql, new UserMapper(), email);
        return users.isEmpty() ? null : users.get(0);
    }

    @Override
    public User login(String username, String password) {
        String sql = "select * from Users where username = ? and password = ?";
        List<User> users = query(sql, new UserMapper(), username, password);
        return users.isEmpty() ? null : users.get(0);
    }

    @Override
    public void updateInfo(User user) {
        String sql = "UPDATE [dbo].[Users] " +
                "SET [mail] = ?, [phone] = ?,  [fullname] = ?" +
                " WHERE [id] = ?;";
        update(sql, user.getMail(), user.getPhone(), user.getfullname(),
                user.getId());
    }

    @Override
    public void updateImage(User user) {
        String sql = "UPDATE [dbo].[Users] " +
                "SET [image] = ?" +
                " WHERE [id] = ?;";
        update(sql, user.getImage(), user.getId());
    }

    @Override
    public void updatePassword(User user) {
        String sql = "UPDATE [dbo].[Users] " +
                "SET [password] = ?" +
                " WHERE [id] = ?;";
        update(sql, user.getPassword(), user.getId());
    }

    @Override
    public Long insertSeller(User user) {
        String sql = "INSERT INTO [dbo].[Users] " +
                "([username], [password], [mail], [phone], [role_id], [fullname], [image]) " +
                "VALUES ( ?, ?, ?, ?, 2, ?, NULL);";
        return insert(sql, user.getUsername(), user.getPassword(), user.getMail(),
                user.getPhone(), user.getfullname());
    }

}
