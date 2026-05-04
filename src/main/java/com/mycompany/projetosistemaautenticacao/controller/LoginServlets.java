/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.mycompany.projetosistemaautenticacao.controller;

import com.mycompany.projetosistemaautenticacao.entidades.Utilizador;
import jakarta.persistence.EntityManager;
import jakarta.persistence.EntityManagerFactory;
import jakarta.persistence.Persistence;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import static java.lang.System.out;
import java.util.List;

/**
 *
 * @author girle
 */
@WebServlet(name = "LoginServlets", urlPatterns = {"/LoginServlets"})
public class LoginServlets extends HttpServlet {
    private EntityManagerFactory emf= Persistence.createEntityManagerFactory("meuPUU");
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
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet LoginServelts</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet LoginServelts at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
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
           response.sendRedirect("login.jsp");
    
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
        
  
      
        String email = request.getParameter("email");
        String pass = request.getParameter("pass");

        if (email != null && pass != null && !email.equals("") && !pass.equals("")) {
            EntityManager em = emf.createEntityManager();
            List<Utilizador> u = em.createQuery("SELECT u FROM Utilizador u where u.email = :mail AND u.password = :pass", Utilizador.class)
                    .setParameter("mail", email).setParameter("pass", pass).getResultList();
            em.close();
            if (!u.isEmpty()) {
                HttpSession session = request.getSession();
                session.setAttribute("email", email);
                response.sendRedirect("DashboardServlet");
            } else {
                request.setAttribute("msg", "Dados de acesso inválidos");
                request.getRequestDispatcher("login.jsp").forward(request, response);
            }
        } else {
            request.setAttribute("msg", "Preencha todos os campos");
            request.getRequestDispatcher("login.jsp").forward(request, response);
        }
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
