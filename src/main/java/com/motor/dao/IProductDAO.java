package com.motor.dao;


import com.motor.model.Product;

import java.util.List;

public interface IProductDAO {
    List<Product> findAll();

    List<Product> findAllBySeller(int userId);

    Product findOne(int id);

    Long insert(Product product);

    void update(Product product);

    void delete(int id);

    List<Product> findTopSelling();

    List<Product> findTopSellingOfSeller(int seller_id);

    long count();
}
