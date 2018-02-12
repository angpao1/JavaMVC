package controller;

import dataAccessObject.BooksDAOImpl;
import dataAccessObject.BooksDAOInterface;
import database.Database;
import model.Books;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "AddBookController", urlPatterns = "/AddBookController")
public class AddBookController extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setContentType("text/html;charset=UTF-8");
        String title = request.getParameter("title").trim();
        String price = request.getParameter("price").trim();
        Books b = new Books(title, Integer.parseInt(price));
        Database db = new Database();
        BooksDAOInterface dao = new BooksDAOImpl(db);
        boolean result = dao.isAddBook(b);
        db.close();
        if (result) {
            String alert = "<script> swal('บันทึกสำเร็จ' ); </script>";
            RequestDispatcher rd = request.getRequestDispatcher("views/add_book.jsp");
            request.setAttribute("alert", alert);
            rd.forward(request, response);
        } else {
            String alert = "<script> swal('บันทึกไม่สำเร็จ', '', 'error'); </script>";
            RequestDispatcher rd = request.getRequestDispatcher("views/add_book.jsp");
            request.setAttribute("alert", alert);
            rd.forward(request, response);
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
