package com.motor.dao;

import com.motor.model.Category;
import com.motor.model.Product;

import java.util.List;

public interface ICategoryDAO {
    List<Category> findAll();

    Category findOne(int id);

}
