package dev.emz.folheto.controller.adm;

import java.io.IOException;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/adm/logout")
public class Logout extends HttpServlet {

    @Override
    protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        
        for (Cookie cookie : request.getCookies()) switch (cookie.getName()) {
            case "username", "password":
                cookie.setMaxAge(0);
                response.addCookie(cookie);
                break;
        }
        
        response.sendRedirect("/adm/login");
    }

}
