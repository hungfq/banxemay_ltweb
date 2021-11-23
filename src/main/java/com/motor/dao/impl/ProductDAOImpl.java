package com.motor.dao.impl;

import com.motor.dao.IProductDAO;
import com.motor.mapper.AbstractDAO;
import com.motor.mapper.ProductMapper;
import com.motor.model.Product;

import java.util.List;

public class ProductDAOImpl extends AbstractDAO<Product> implements IProductDAO {
    @Override
    public List<Product> findAll() {
        String sql = "select * from Products";
        return query(sql, new ProductMapper());
    }

    @Override
    public List<Product> findAllBySeller(int userId) {
        String sql = "select * from Products where seller_id = ?";
        return query(sql, new ProductMapper(), userId);
    }

    @Override
    public Product findOne(int id) {
        String sql = "select * from Products where id = ?";
        List<Product> products = query(sql, new ProductMapper(), id);
        return products.isEmpty() ? null : products.get(0);
    }

    @Override
    public Long insert(Product product) {
        String sql = "INSERT INTO [dbo].[Products] ( [name], [price], [description], [image], [category_id], [seller_id], [amount], [status], [brand_id]) " +
                "VALUES ( ?, ?, ?, ?, ?, ?, ?, ?, ?);";
        return insert(sql, product.getName(), product.getPrice(), product.getDescription(),
                product.getImage(), product.getCategory_id(), product.getSeller_id(), product.getAmount(),
                product.getStatus(), product.getBrand_id());
    }

    @Override
    public void update(Product product) {
        String sql = "UPDATE [dbo].[Products] SET [name] = ?, [price] = ?, [description] =  ?, " +
                "[image] = ?, [category_id] = ?, [seller_id] = ?, [amount] = ?, [status] = ?, " +
                "[brand_id] = ? WHERE [id] = ?;";
        update(sql, product.getName(), product.getPrice(), product.getDescription(),
                product.getImage(), product.getCategory_id(), product.getSeller_id(), product.getAmount(),
                product.getStatus(), product.getBrand_id(), product.getId());
    }

    @Override
    public void delete(int id) {
        String sql = "DELETE FROM Products WHERE id = ?";
        update(sql, id);
    }
}
