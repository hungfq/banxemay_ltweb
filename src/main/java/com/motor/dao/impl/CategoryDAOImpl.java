package com.motor.dao.impl;

import com.motor.dao.ICategoryDAO;
import com.motor.mapper.AbstractDAO;
import com.motor.mapper.CategoryMapper;
import com.motor.mapper.ProductMapper;
import com.motor.model.Category;
import com.motor.model.Product;

import java.util.List;

public class CategoryDAOImpl extends AbstractDAO<Category> implements ICategoryDAO {
    @Override
    public List<Category> findAll() {
        String sql = "select * from Categories";
        return query(sql, new CategoryMapper());
    }

    @Override
    public Category findOne(int id) {
        String sql = "select * from Categories where id = ?";
        List<Category> category = query(sql, new CategoryMapper(), id);
        return category.isEmpty() ? null : category.get(0);
    }
}
