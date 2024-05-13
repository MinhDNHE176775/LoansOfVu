/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import dal.CategoryDAO;
import dal.ProductDAO;
import dal.SupplierDAO;
import model.Category;
import java.io.IOException;
import java.util.List;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import model.Supplier;

@WebServlet(name = "UpdateSupplierServlet", urlPatterns = {"/updatesupplier"})
public class UpdateSupplierServlet extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        String id_raw = request.getParameter("sid");
        ProductDAO daoP = new ProductDAO();
        SupplierDAO daoS = new SupplierDAO();
        CategoryDAO daoC = new CategoryDAO();
        int id = Integer.parseInt(id_raw);
        Supplier s = daoS.getSupplierById(id);
        List<Category> listC = daoC.getAll();
        List<Supplier> listS = daoS.getAll();


        request.setAttribute("detail", s);
        request.setAttribute("listSup", listS);
        request.setAttribute("listCC", listC);
        request.getRequestDispatcher("dashboard/updatesupplier.jsp").forward(request, response);
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
