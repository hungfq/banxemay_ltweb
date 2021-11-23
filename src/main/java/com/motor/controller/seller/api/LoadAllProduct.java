package com.motor.controller.seller.api;

import com.google.gson.Gson;
import com.motor.model.Product;
import com.motor.service.IProductService;
import com.motor.service.impl.ProductServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

@WebServlet("/api/seller/get-all-product")
public class LoadAllProduct extends HttpServlet {
    //    @Inject
    IProductService iProductService = new ProductServiceImpl();

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.setContentType("text/html");
        resp.setCharacterEncoding("UTF-8");
        req.setCharacterEncoding("UTF-8");

        List<Product> products = iProductService.findAll();
        String json = new Gson().toJson(products);
        System.out.println("Product: " + products);
        System.out.println("json: " + json);
        PrintWriter out = resp.getWriter();
        out.write(json);
        out.close();
    }
}
