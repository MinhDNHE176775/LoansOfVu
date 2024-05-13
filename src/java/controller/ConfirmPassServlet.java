/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;

import dal.UserDAO;
import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import model.User;

@WebServlet(name = "ConfirmPassServlet", urlPatterns = {"/confirmpass"})
public class ConfirmPassServlet extends HttpServlet {


    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.getRequestDispatcher("newpassword.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String newpass = request.getParameter("password");
        String cfnewpass = request.getParameter("cfpassword");
        String username = request.getParameter("userName");
        String msg = "";
        UserDAO dao = new UserDAO();
        User a = dao.getUserByUserName(username);
        if (cfnewpass.equals(newpass)) {
            dao.updatePassByUserName(newpass, username);
            msg = "Change password successfully!";
            request.setAttribute("successfully", msg);
            request.getRequestDispatcher("login.jsp").forward(request, response);
        }
    }

}
