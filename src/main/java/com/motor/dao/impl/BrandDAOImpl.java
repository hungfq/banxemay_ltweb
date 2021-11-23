package com.motor.dao.impl;

import com.motor.dao.IBrandDAO;
import com.motor.mapper.AbstractDAO;
import com.motor.mapper.BrandMapper;
import com.motor.model.Brand;

import java.util.List;

public class BrandDAOImpl extends AbstractDAO implements IBrandDAO {
    @Override
    public List<Brand> findAll() {
        String sql = "select * from Brands";
        return query(sql, new BrandMapper());
    }

    @Override
    public Brand findOne(int id) {
        String sql = "select * from Brands where id = ?";
        List<Brand> brand = query(sql, new BrandMapper(), id);
        return brand.isEmpty() ? null : brand.get(0);
    }
}
