
package controller;

import dal.ProductDAO;
import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.Part;

@WebServlet(name = "AddProductServlet", urlPatterns = {"/addproduct"})
public class AddProductServlet extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String pname = request.getParameter("name");
        String[] pimage = request.getParameterValues("image");
        String pprice_raw = request.getParameter("price");
        String pdescribe = request.getParameter("describe");
        String pquantity_raw = request.getParameter("quantity");

        String pquantityunit = request.getParameter("quantityunit");
        String pdate = request.getParameter("date");
        String pdiscount_raw = request.getParameter("discount");
        String psupplier_raw = request.getParameter("supplier");
        String pcategory_raw = request.getParameter("category");
        double pprice, pdiscount;
        int pquantity, psupplier, pcategory;
        String image = "";
        try {
            pprice = Double.parseDouble(pprice_raw);
            pdiscount = Double.parseDouble(pdiscount_raw);
            pquantity = Integer.parseInt(pquantity_raw);
            psupplier = Integer.parseInt(psupplier_raw);
            pcategory = Integer.parseInt(pcategory_raw);
            for (int i = 0; i < pimage.length; i++) {
                switch (pcategory) {
                    case 1:
                        image += "images/" + pimage[i] + ",";
                        break;
                    case 2:
                        image = "images/" + pimage[i] + ",";
                        break;
                    case 3:
                        image = "images/" + pimage[i] + ",";
                        break;
                    case 4:
                        image = "images/" + pimage[i] + ",";
                        break;
                    case 5:
                        image = "images/" + pimage[i] + ",";
                        break;
                }
            }
            if (image.endsWith(",")) {
                image = image.substring(0, image.length() - 1);
            }
            ProductDAO dao = new ProductDAO();
            dao.insertProduct(pname, image, pprice, pdescribe, pquantity, pquantityunit, pdate, pdiscount, psupplier, pcategory);
        } catch (NumberFormatException e) {
            System.out.println(e);
        }
        request.setAttribute("mess", "Product Added!");
        request.getRequestDispatcher("manager").forward(request, response);
    }

    private String getSubmittedFileName(Part part) {
        for (String cd : part.getHeader("content-disposition").split(";")) {
            if (cd.trim().startsWith("filename")) {
                return cd.substring(cd.indexOf('=') + 1).trim().replace("\"", "");
            }
        }
        return null;
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
