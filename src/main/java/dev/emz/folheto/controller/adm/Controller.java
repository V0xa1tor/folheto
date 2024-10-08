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

@WebServlet("/adm")
public class Controller extends HttpServlet {

    public static final String INDEX_PAGE = "/WEB-INF/adm/index.jsp";
    public static final String LOGIN_PAGE = "/WEB-INF/adm/login.jsp";
    public static final String ADMINISTRATORS_PAGE = "/WEB-INF/adm/administrators.jsp";

    protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException ,IOException {
        if (isUserAuthenticated(request.getCookies())) {
            request.getRequestDispatcher(INDEX_PAGE).forward(request, response);
        } else {
            request.getRequestDispatcher(LOGIN_PAGE).forward(request, response);
        }
    }
    
    public static boolean isUserAuthenticated(Cookie[] cookies) {
        
        if (cookies != null) {

            Administrator admCookie = new Administrator();

            for (Cookie cookie : cookies) switch (cookie.getName()) {
                case "username": admCookie.setUsername(cookie.getValue()); break;
                case "password": admCookie.setPassword(cookie.getValue()); break;
            }

            Administrator adm = AdministratorsDAO.findByUsername(admCookie.getUsername());
            if (adm != null) if (adm.getPassword().equals(admCookie.getPassword())) return true;
        }

        return false;
    }
}
