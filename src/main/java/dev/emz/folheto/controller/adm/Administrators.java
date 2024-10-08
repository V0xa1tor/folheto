package dev.emz.folheto.controller.adm;

import java.io.IOException;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/adm/administrators")
public class Administrators extends HttpServlet {

    @Override
    protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        // Authenticate
        if (!Controller.isUserAuthenticated(request.getCookies())) response.sendRedirect("/adm/login");
        
        request.getRequestDispatcher(Controller.ADMINISTRATORS_PAGE).forward(request, response);
    }

}
