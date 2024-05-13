
package controller;

import dal.CategoryDAO;
import dal.ProductDAO;
import dal.SupplierDAO;
import model.Category;
import model.Product;
import java.io.IOException;
import java.util.List;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import model.Supplier;

@WebServlet(name = "UpdateProductServlet", urlPatterns = {"/updateproduct"})
public class UpdateProductServlet extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        String id_raw = request.getParameter("pid");
        ProductDAO daoP = new ProductDAO();
        SupplierDAO daoS = new SupplierDAO();
        CategoryDAO daoC = new CategoryDAO();
        int id = Integer.parseInt(id_raw);
        Product p = daoP.getProductByID(id);
        List<Category> listC = daoC.getAll();
        List<Supplier> listS = daoS.getAll();


        request.setAttribute("detail", p);
        request.setAttribute("listSup", listS);
        request.setAttribute("listCC", listC);
        request.getRequestDispatcher("dashboard/updateproduct.jsp").forward(request, response);
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
