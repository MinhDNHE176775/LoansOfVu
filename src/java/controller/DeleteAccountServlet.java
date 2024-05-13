
package controller;

import dal.UserDAO;
import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import model.User;

@WebServlet(name = "DeleteAccountServlet", urlPatterns = {"/deleteaccount"})
public class DeleteAccountServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        String username = request.getParameter("username");
        HttpSession session = request.getSession();
        User userss = (User) session.getAttribute("account");
        String at = request.getParameter("at");
        UserDAO dao = new UserDAO();
        String msg = "";
        if (username != null) {
            dao.deleteUser(username);
            msg = "Delete username " + username + " successfully!";
        } else {
            msg = "Delete failed!";
        }
        request.setAttribute("mess", msg);
        if (username.equals(userss.getUserName())) {
            session.removeAttribute("account");
            request.getRequestDispatcher("home").forward(request, response);
        }
        request.getRequestDispatcher("managerAccount").forward(request, response);
    }

}
