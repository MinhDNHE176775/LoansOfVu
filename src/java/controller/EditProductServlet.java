package controller;

import dal.ProductDAO;
import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.util.List;
import model.Product;

@WebServlet(name = "EditControl", urlPatterns = {"/editproduct"})
public class EditProductServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("UTF-8");
        String pid_raw = request.getParameter("id");
        String pname = request.getParameter("name");
        String[] pimage = request.getParameterValues("image");

        String pprice_raw = request.getParameter("price");
        String pdescribe = request.getParameter("describe");
        String pquantity_raw = request.getParameter("quantity");
        String pdate = request.getParameter("date");
        String pdiscount_raw = request.getParameter("discount");
        String pquantityunit = request.getParameter("quantityperunit");

        String pcategory_raw = request.getParameter("category");
        String psupplier_raw = request.getParameter("supplier");
        ProductDAO dao = new ProductDAO();
        double pprice, pdiscount;
        int pid, pquantity, psupplier, pcategory;
        String image = "";
        try {
            pprice = Double.parseDouble(pprice_raw);
            pdiscount = Double.parseDouble(pdiscount_raw);
            pquantity = Integer.parseInt(pquantity_raw);
            pid = Integer.parseInt(pid_raw);
            psupplier = Integer.parseInt(psupplier_raw);
            pcategory = Integer.parseInt(pcategory_raw);
            if (pimage[0] != null && !pimage[0].equals("")) {
                for (int i = 0; i < pimage.length; i++) {
                    switch (pcategory) {
                        case 1:
                            image += "images/" + pimage[i] + ",";
                            break;
                        case 2:
                            image = "images/" + pimage[i] + ",";
                            break;
                    }
                }
                if (image.endsWith(",")) {
                    image = image.substring(0, image.length() - 1);
                }
            }
            List<Product> productList = dao.getAll();

            dao.editProduct(pname, image, pprice, pdescribe, pquantity, pquantityunit, pdate, pdiscount, psupplier, pcategory, pid);
            request.setAttribute("mess", "Edit successfully!");
            request.setAttribute("listByPage", productList);
           
        } catch (NumberFormatException e) {
            System.out.println(e);
        }
         request.getRequestDispatcher("manager").forward(request, response);
    }

}
