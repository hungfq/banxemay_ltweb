package com.motor.controller.seller;

import com.motor.model.User;
import com.motor.service.IUserService;
import com.motor.service.impl.UserServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Random;
import java.util.stream.Collectors;


@WebServlet("/register")
public class RegisterController extends HttpServlet {
    IUserService userService = new UserServiceImpl();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
//        EmailUtil mailSender = new EmailUtil("t.hungpham2314@gmail.com");
//        mailSender.sendMail("Your password is......");
//        String password = new Random().ints(10, 33, 122)
//                .mapToObj(i -> String.valueOf((char) i)).collect(Collectors.joining());
//        System.out.println(password);

    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        // thiết lập tiếng Việt
        resp.setContentType("text/html");
        resp.setCharacterEncoding("UTF-8");
        req.setCharacterEncoding("UTF-8");

        String username = req.getParameter("username");
        String mail = req.getParameter("email");

        User user = new User();
        user.setMail(mail);
        user.setUsername(username);
        user.setfullname(req.getParameter("fullname"));
        user.setPhone(req.getParameter("phone"));
        user.setPassword(req.getParameter("password"));

        User existingUsername = userService.findOneWithUsername(username);
        User existingEmail = userService.findOneWithEmail(mail);
        String errorMessage;
        if (existingUsername != null) {
            errorMessage = "Username already exists";
        } else if (existingEmail != null) {
            errorMessage = "Email already exists";
        } else {
            userService.insertSeller(user);
            errorMessage = "Account successfully created";
        }
        resp.sendRedirect("login?errorMessage=" + errorMessage);
    }
}
