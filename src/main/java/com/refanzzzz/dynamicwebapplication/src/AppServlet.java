package com.refanzzzz.dynamicwebapplication.src;

import com.refanzzzz.dynamicwebapplication.src.data.Data;
import com.refanzzzz.dynamicwebapplication.src.model.LoginBean;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

public class AppServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.setContentType("text/html");

        String userId = req.getParameter("userId");
        String password = req.getParameter("password");

        LoginBean loginBean = new LoginBean();
        loginBean.setUserId(userId);
        loginBean.setPassword(password);

        req.setAttribute("bean", loginBean);
        req.setAttribute("students", Data.getStudents());
        req.setAttribute("isLogin", true);

        if (Auth.authLogin(userId, password)) {
            RequestDispatcher requestDispatcher = req.getRequestDispatcher("/");
            requestDispatcher.forward(req, resp);
        } else {
            resp.sendRedirect("login.jsp");
        }
    }
}
