
package controller;

import dal.UserDAO;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet(name = "ConfirmResetCodeServlet", urlPatterns = {"/confirmresetcode"})
public class ConfirmResetCodeServlet extends HttpServlet {




    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession session = request.getSession();
        UserDAO ud = new UserDAO();
        String resetCode = request.getParameter("resetcode");
        String code = (String) session.getAttribute("code");
        String email = request.getParameter("email");
        String message = (String) request.getAttribute("message");
        String check = (String) request.getAttribute("check");
        if (code.equalsIgnoreCase(resetCode)) {
            check = "true";
            String userName = ud.getUserNameByEmail(email);

            request.removeAttribute("code");
            request.setAttribute("uName", userName);
            request.setAttribute("check", check);
            request.getRequestDispatcher("newpassword.jsp").forward(request, response);
        } else {
            check = "true";
            message = "Sorry, reset code incorrect";
            session.setAttribute("code", code);
            request.setAttribute("email", email);
            request.setAttribute("check", check);
            request.setAttribute("message", message);
            request.getRequestDispatcher("forgot.jsp").forward(request, response);
        }
    }


}
