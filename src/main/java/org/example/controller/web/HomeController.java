package org.example.controller.web;

import org.example.model.UserModel;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.rmi.ServerException;
import java.sql.Timestamp;
import java.time.LocalDate;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.Date;

@WebServlet (urlPatterns = {"/home"})
public class HomeController extends HttpServlet {
    private static final long serialVersionUID = 1L;
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws IOException, ServletException {
        RequestDispatcher rd = request.getRequestDispatcher("/views/web/home.jsp");
        rd.forward(request, response);
    }
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws IOException, ServletException{
        String email = request.getParameter("email");
        String firstName = request.getParameter("firstName");
        String lastName = request.getParameter("lastName");

        String dateString = request.getParameter("date");
        DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd");
        LocalDate dateOfBirth = LocalDate.parse(dateString, formatter);
        String industry = request.getParameter("industry");

        String contact = request.getParameter("contact-method");
        UserModel userModel = new UserModel(email, firstName, lastName, contact, dateOfBirth);
        String [] checkBox = request.getParameterValues("yes");
        for (String box : checkBox) {
            System.out.println(box);
        }
        request.setAttribute("checkBoxs", checkBox);
        request.setAttribute("industry", industry);
        String message;
        request.setAttribute("user", userModel);
        RequestDispatcher rd = request.getRequestDispatcher("views/web/thanks.jsp");
        rd.forward(request, response);
    }
}
