/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

package controller;

import dal.OrderDAO;
import dal.UserDAO;
import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.util.List;
import model.Order;
import model.User;

/**
 *
 * @author ADMIN
 */
@WebServlet(name="OrderServlet", urlPatterns={"/order"})
public class OrderServlet extends HttpServlet {
   
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("UTF-8");
      
        OrderDAO odao = new OrderDAO();
        UserDAO udao = new UserDAO();

        double sumMoney = odao.sumAllMoneyOrder();
        
        List<Order> listAllOrder = odao.getAll();
        List<User> listAllAccount = udao.getAllUsers();
        
        request.setAttribute("listAllInvoice", listAllOrder);
        request.setAttribute("listAllAccount", listAllAccount);
        request.setAttribute("sumAllInvoice", sumMoney);
        
      
        request.getRequestDispatcher("dashboard/order.jsp").forward(request, response);
    }
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

}
