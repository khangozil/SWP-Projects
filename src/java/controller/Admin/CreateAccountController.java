/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller.Admin;

import DAO.AccountDAO;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author ADMIN
 */
@WebServlet(name = "CreateAccountController", urlPatterns = {"/createAccount"})
public class CreateAccountController extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("UTF-8"); //dùng để sử dụng tiếng diệt

        String name = request.getParameter("fullname");
        String user = request.getParameter("username");
        String pass = request.getParameter("password");
        String repass = request.getParameter("repassword");
        String phone = request.getParameter("phone");
        String address = request.getParameter("address");
        String mail = request.getParameter("mail");
        String gender = request.getParameter("gender");
        String role = request.getParameter("role");
        Integer roleValue = Integer.parseInt(role);

//        if (!pass.equals(repass)) {
//            request.setAttribute("mess", "Mật khẩu không giống nhau");
//            request.getRequestDispatcher("Register.jsp").forward(request, response);
//        } else {
        AccountDAO dao = new AccountDAO();
        boolean a = dao.checkAccountExist(user);

        //a == false, account is not exist, possible to singup
        if (!a) {
            dao.createAccount(user, pass, name, phone, address, mail, gender, roleValue);
            request.setAttribute("messSuccess", "Tạo tài khoản thành công!");
            response.sendRedirect("manageAccount");
        } else {
            //day ve trang login.jsp
            request.setAttribute("mess", "Tài khoản đã tồn tại!");
            request.getRequestDispatcher("Admin/CreateAccount.jsp").forward(request, response);
        }
//        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
