/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
  * author: H.M.Duc
 */
package controller;

import dal.UserDAO;
import model.User;

import java.io.IOException;
import java.util.List;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import model.Spending;


@WebServlet(name = "Top5KhachHangControl", urlPatterns = {"/top5khachhang"})
public class Top5Customer extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
      
        UserDAO dao = new UserDAO();

        List<User> listAllAccount = dao.getAllUsers();
        List<Spending> listTop5CustomerSpending = dao.userOrder();


        request.setAttribute("listAllAccount", listAllAccount);
        request.setAttribute("listTop5Spending", listTop5CustomerSpending);
        request.getRequestDispatcher("dashboard/top5customer.jsp").forward(request, response);
    }

  
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }


}
