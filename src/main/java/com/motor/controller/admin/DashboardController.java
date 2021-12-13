package com.motor.controller.admin;

import com.motor.service.IOrderService;
import com.motor.service.IProductService;
import com.motor.service.impl.OrderServiceImpl;
import com.motor.service.impl.ProductServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;


@WebServlet(urlPatterns = {"/admin/dashboard"})
public class DashboardController extends HttpServlet {
    private static final long serialVersionUID = 1L;
    IProductService productService = new ProductServiceImpl();
    IOrderService orderService = new OrderServiceImpl();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        // thiết lập tiếng Việt
        resp.setContentType("text/html");
        resp.setCharacterEncoding("UTF-8");
        req.setCharacterEncoding("UTF-8");

        req.setAttribute("active", 1);
        req.getRequestDispatcher("/views/admin/dashboard.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        // TODO Auto-generated method stub
        super.doPost(req, resp);
    }
}

