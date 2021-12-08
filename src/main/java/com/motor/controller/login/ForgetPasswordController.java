package com.motor.controller.login;

import com.motor.model.User;
import com.motor.service.IUserService;
import com.motor.service.impl.UserServiceImpl;
import com.motor.util.EmailUtil;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Random;
import java.util.stream.Collectors;

@WebServlet("/forget")
public class ForgetPasswordController extends HttpServlet {
    IUserService userService = new UserServiceImpl();

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String email = req.getParameter("email");
//        System.out.println(email);
        User existingEmail = userService.findOneWithEmail(email);
        String errorMessage;
        if (existingEmail == null){
            errorMessage = "Email does not match any accounts";
        }else{
            errorMessage = "Please check your email for a new password";
            String newPassword = new Random().ints(10, 33, 122)
                    .mapToObj(i -> String.valueOf((char) i)).collect(Collectors.joining());
            existingEmail.setPassword(newPassword);
            userService.updatePassword(existingEmail);
            EmailUtil mailSender = new EmailUtil(email);
            mailSender.sendMail("Your password is: " + newPassword  +
                    "<br/> Please change your password after login");
        }
        resp.sendRedirect("login?errorMessage=" + errorMessage);
    }
}
