package com.motor.service.impl;

import com.motor.dao.IProductDAO;
import com.motor.dao.impl.ProductDAOImpl;
import com.motor.model.Product;
import com.motor.service.IProductService;

import java.util.List;

public class ProductServiceImpl implements IProductService {
    //    @Inject
    IProductDAO productDAO = new ProductDAOImpl();

    @Override
    public List<Product> findAll() {
        return productDAO.findAll();
    }

    @Override
    public List<Product> findAllBySeller(int userId) {
        return productDAO.findAllBySeller(userId);
    }

    @Override
    public Product findOne(int id) {
        return productDAO.findOne(id);
    }

    @Override
    public Long insert(Product product) {
        return productDAO.insert(product);
    }

    @Override
    public void update(Product product) {
        productDAO.update(product);
    }

    @Override
    public void delete(int id) {
        productDAO.delete(id);
    }

    @Override
    public List<Product> findTopSelling(int seller_id) {
        return productDAO.findTopSelling(seller_id);
    }
}
