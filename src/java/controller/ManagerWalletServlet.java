/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;

import dal.WalletDAO;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.util.List;
import model.Wallet;

/**
 *
 * @author Admin
 */
@WebServlet(name = "ManagerWalletServlet", urlPatterns = {"/walletmanager"})
public class ManagerWalletServlet extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        WalletDAO wdao = new WalletDAO();
        List<Wallet> list = wdao.getAll();
        request.setAttribute("listWallet", list);
        request.getRequestDispatcher("dashboard/mngwallet.jsp").forward(request, response);
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String txtSearch = request.getParameter("valueSearch");
        WalletDAO dao = new WalletDAO();

        List<Wallet> list = dao.getWalletBySearchName(txtSearch);

        request.setAttribute("listWallet", list);
        request.setAttribute("searchValue", txtSearch);
        request.getRequestDispatcher("dashboard/mngwallet.jsp").forward(request, response);
    }

}
