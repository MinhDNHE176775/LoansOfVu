
package controller;

import dal.SupplierDAO;
import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.util.List;
import model.Supplier;

@WebServlet(name = "EditSupplierServlet", urlPatterns = {"/editsupplier"})
public class EditSupplierServlet extends HttpServlet {




    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("UTF-8");
        String sid_raw = request.getParameter("id");
        String companyName = request.getParameter("companyName");
        String contactName = request.getParameter("contactName");
        String country = request.getParameter("country");
        String phone = request.getParameter("phone");
        String homepage = request.getParameter("homepage");
        
        SupplierDAO daoS = new SupplierDAO();
        int id = Integer.parseInt(sid_raw);
        daoS.editSupplier(id, companyName, contactName, country, phone, homepage);
        List<Supplier> listAllSupplier = daoS.getAll();
        request.setAttribute("mess", "Edit successfully!");
        request.setAttribute("listAllSupplier", listAllSupplier);
        request.getRequestDispatcher("dashboard/supplier.jsp").forward(request, response);
    }

}
