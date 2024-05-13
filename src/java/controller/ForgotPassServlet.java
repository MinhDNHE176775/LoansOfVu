
package controller;

import dal.UserDAO;
import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.util.Random;
import model.Email;

@WebServlet(name = "ForgotPassServlet", urlPatterns = {"/forgot"})
public class ForgotPassServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.getRequestDispatcher("forgot.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession session = request.getSession();
        String emailInput = request.getParameter("email");
        UserDAO ud = new UserDAO();
        Email handleEmail = new Email();
        String email = ud.checkEmailExist(emailInput);
        String message = "";
        String check = null;

        if (email != null) {
            Random random = new Random();
            message = "EXIST - valid email, check your email to have resetcode";
            check = "true";
            String userName = ud.getUserNameByEmail(email);
            // Tạo số nguyên ngẫu nhiên có 6 chữ số
            Integer code = 100000 + random.nextInt(900000);
            String code_str = code.toString();
            String subject = handleEmail.subjectForgotPass();
            String msgEmail = handleEmail.messageForgotPass(userName, code);
            handleEmail.sendEmail(subject, msgEmail, email);

            // 
            session.setAttribute("code", code_str);
            request.setAttribute("email", emailInput);
            request.setAttribute("check", check);
            request.setAttribute("message", message);
            request.getRequestDispatcher("forgot.jsp").forward(request, response);
        } else {
            message = "NOT EXIST - Invalid email";
            check = "false";
            request.setAttribute("message", message);
            request.setAttribute("check", check);
            request.getRequestDispatcher("forgot.jsp").forward(request, response);
        }
    }


}
