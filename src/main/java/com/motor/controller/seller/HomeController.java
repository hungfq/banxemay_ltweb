package com.motor.controller.seller;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;


@WebServlet(urlPatterns = {"/seller/home", "/banhang"})
public class HomeController extends HttpServlet {
    private static final long serialVersionUID = 1L;

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        // thiết lập tiếng Việt
        resp.setContentType("text/html");
        resp.setCharacterEncoding("UTF-8");
        req.setCharacterEncoding("UTF-8");

        // b1: khởi tạo DAO
//		ProductDAOImpl productDAO = new ProductDAOImpl();
//		CategoryDAO categoryDAO = new CategoryDAO();
//		// b2: sd đối tượng list để chứa ds từ productDAO
//		List<ProductModel> listtop4 = productDAO.getTop4Product();
//		List<ProductModel> listtop1amount = productDAO.getTop1ProductAmount();
//		List<ProductModel> listtop4amount = productDAO.getTop4ProductAmount();
//		List<CategoryModel> listallcate = categoryDAO.getAllCategory();
//		// b3: thiết lập dữ liệu lên jsp
//		req.setAttribute("list4product", listtop4);
//		req.setAttribute("list1productamount", listtop1amount);
//		req.setAttribute("list4productamount", listtop4amount);
//		req.setAttribute("listcate", listallcate);
        // b4: trả về trang jsp nào
        req.setAttribute("active", 0);
        req.getRequestDispatcher("/views/seller/home.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        // TODO Auto-generated method stub
        super.doPost(req, resp);
    }
}
