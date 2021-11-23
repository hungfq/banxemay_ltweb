package com.motor.service.impl;

import com.motor.dao.IBrandDAO;
import com.motor.dao.impl.BrandDAOImpl;
import com.motor.model.Brand;
import com.motor.service.IBrandService;

import java.util.List;

public class BrandServiceImpl implements IBrandService {
    //    @Inject
    IBrandDAO brandDAO = new BrandDAOImpl();

    @Override
    public List<Brand> findAll() {
        return brandDAO.findAll();
    }

    @Override
    public Brand findOne(int id) {
        return brandDAO.findOne(id);
    }
}
