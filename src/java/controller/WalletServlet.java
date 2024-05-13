

package controller;

import dal.WalletDAO;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import model.Wallet;

@WebServlet(name="WalletServlet", urlPatterns={"/wallet"})
public class WalletServlet extends HttpServlet {

 

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        HttpSession session = request.getSession();
        String userName = request.getParameter("userN");
        String valueStr =  request.getParameter("add");
        double value = 0;
        try {
            value = Double.parseDouble(valueStr);
        } catch (Exception e) {
        }
        WalletDAO wd = new WalletDAO();
        // udate amount
        wd.inputMoney(userName, value);
        Wallet wallet = wd.getWalletByUserName(userName);
        session.setAttribute("wallet", wallet);
        
        request.getRequestDispatcher("profile").forward(request, response);
    } 


 

}
