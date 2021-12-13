package com.motor.controller.admin;

import com.motor.model.User;
import com.motor.service.IUserService;
import com.motor.service.impl.UserServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/admin/useredit")
public class UserEditController extends HttpServlet {
    IUserService userService = new UserServiceImpl();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        // thiết lập tiếng Việt
        resp.setContentType("text/html");
        resp.setCharacterEncoding("UTF-8");
        req.setCharacterEncoding("UTF-8");

        User user = new User();

        String action = req.getParameter("action");
        String ac = action == null ? "" : action;

        if (ac.equals("edit")) {
            int id = Integer.parseInt(req.getParameter("id"));
            user = userService.findOne(id);
        }
        req.setAttribute("user", user);
        req.setAttribute("active", 3);
        req.getRequestDispatcher("/views/admin/user_edit.jsp").forward(req, resp);
    }
}
