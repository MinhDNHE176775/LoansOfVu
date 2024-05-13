
package controller;

import dal.SupplierDAO;
import dal.CategoryDAO;
import model.Category;
import model.Supplier;

import java.io.IOException;
import java.util.List;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet(name = "ManagerSupplierServlet", urlPatterns = {"/managersupplier"})
public class ManagerSupplierServlet extends HttpServlet {



    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        SupplierDAO daoS = new SupplierDAO();
        CategoryDAO daoC = new CategoryDAO();

        List<Supplier> listAllSupplier = daoS.getAll();

        request.setAttribute("listAllSupplier", listAllSupplier);

        request.getRequestDispatcher("dashboard/supplier.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("UTF-8");
        String txtSearch = request.getParameter("valueSearch");
        SupplierDAO daoS = new SupplierDAO();
        CategoryDAO daoC = new CategoryDAO();

        List<Supplier> listAllSupplier = daoS.getSuppliersBySearch(txtSearch);
        List<Category> listAllCategory = daoC.getAll();

        request.setAttribute("listAllSupplier", listAllSupplier);
        request.setAttribute("listAllCategory", listAllCategory);
        request.setAttribute("searchValue", txtSearch);
        request.getRequestDispatcher("dashboard/supplier.jsp").forward(request, response);
    }

}
