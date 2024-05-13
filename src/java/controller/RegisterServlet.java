
package controller;

import dal.UserDAO;
import dal.WalletDAO;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import model.User;
import model.Wallet;

@WebServlet(name = "RegisterServlet", urlPatterns = {"/register"})
public class RegisterServlet extends HttpServlet {

    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.getRequestDispatcher("register.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        String fName = request.getParameter("name");
        String uName = request.getParameter("username");
        String uPass = request.getParameter("password");
        String uPho = request.getParameter("phone");
        String uEmail = request.getParameter("email");
        String birthDate = request.getParameter("dob");
        UserDAO ud = new UserDAO();
        WalletDAO wd = new WalletDAO();
        User user;
        Wallet wallet;
        String message = "Something wrong";
        int slUPrev = ud.getNumberUsers();
        int slWPrev = wd.getNumberWallets();
        boolean isDup = ud.checkUserNameDuplicate(uName);
        if (isDup == true) {
            message = "Username already exists!";
            request.setAttribute("error", message);
            request.getRequestDispatcher("register.jsp").forward(request, response);
        } else {
            System.out.println(birthDate.toString());
            user = new User(uName, fName, uPass, "", uPho, uEmail, "", birthDate, 2);
            ud.insert(user);
            wallet = new Wallet(uName, 0);
            wd.addWallet(wallet);
            int slUAfter = ud.getNumberUsers();
            int slWAfter = wd.getNumberWallets();

            if (slUAfter > slUPrev && slWAfter > slWPrev) {
                message = "Register successfully. Please login!";
                request.setAttribute("successfully", message);

               
                request.getRequestDispatcher("login.jsp").forward(request, response);
                return;
            }
            request.setAttribute("error", message);
            request.getRequestDispatcher("register.jsp").forward(request, response);
        }
    }

}
