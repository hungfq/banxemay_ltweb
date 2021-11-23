package com.motor.dao;

import com.motor.model.Category;

import java.util.List;

public interface ICategoryDAO {
    List<Category> findAll();

    Category findOne(int id);

}
