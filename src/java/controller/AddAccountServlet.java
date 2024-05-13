/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 * author: H.M.Duc
 */
package controller;

import dal.UserDAO;
import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;


@WebServlet(name = "AddAccountServlet", urlPatterns = {"/addaccount"})
public class AddAccountServlet extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("UTF-8");
        String FullName = request.getParameter("name");
        String UserName = request.getParameter("user");
        String Password = request.getParameter("pass");
        String roleId_raw = request.getParameter("roleId");
        String Email = request.getParameter("email");
        String Phone = request.getParameter("phone");
        String BirthDay = request.getParameter("birthdate");
        int roleId = (roleId_raw == null ? 2 : Integer.parseInt(roleId_raw));
        String msg = "";
        UserDAO udao = new UserDAO();
        boolean check = udao.checkUserNameDuplicate(UserName);
        if (check) {
            msg = "Username already exist!";
            request.setAttribute("error", msg);
        } else {
            udao.insertUser(UserName, FullName, Password, roleId, Email, BirthDay, Phone);
            msg = "Username " + UserName + " add successfully!";
            request.setAttribute("mess", msg);
        }
        request.getRequestDispatcher("managerAccount").forward(request, response);
    }
   
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);

    }
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }
}

