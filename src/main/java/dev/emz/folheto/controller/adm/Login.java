package dev.emz.folheto.controller.adm;

import java.io.IOException;

import dev.emz.folheto.model.Administrator;
import dev.emz.folheto.model.AdministratorsDAO;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/adm/login")
public class Login extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher(Controller.LOGIN_PAGE).forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        
        if (isValidUser(username, password)) {

            Cookie usernameCookie = new Cookie("username", username);
            usernameCookie.setMaxAge(60*5);
            response.addCookie(usernameCookie);

            Cookie passwordCookie = new Cookie("password", password);
            passwordCookie.setMaxAge(60*5);
            response.addCookie(passwordCookie);
            
            response.sendRedirect("/adm");
        } else {
            response.sendRedirect("/adm/login");
        }
    }

    public boolean isValidUser(String username, String password) {

        Administrator adm = AdministratorsDAO.findByUsername(username);
        if (adm != null) if (adm.getPassword().equals(password)) return true;

        return false;
    }
}
