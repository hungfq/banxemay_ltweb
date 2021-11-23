package com.motor.service;

import com.motor.model.Product;

import java.util.List;

public interface IProductService {
    List<Product> findAll();

    List<Product> findAllBySeller(int userId);

    Product findOne(int id);

    Long insert(Product product);
    void update(Product product);
    void delete(int id);
}
