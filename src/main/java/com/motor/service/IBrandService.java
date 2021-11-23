package com.motor.service;

import com.motor.model.Brand;

import java.util.List;

public interface IBrandService {
    List<Brand> findAll();

    Brand findOne(int id);
}
