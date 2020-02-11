/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.BancoDeDados;
import model.Curso;

/**
 *
 * @author joaom
 */
public class CursoServlet extends HttpServlet {

    BancoDeDados db;

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    public void init()
            throws ServletException {
        super.init(); //To change body of generated methods, choose Tools | Templates.
        db = new BancoDeDados("escola", "student", "student");

    }

    @Override
    public void destroy() {
        super.destroy(); //To change body of generated methods, choose Tools | Templates.
        if (db != null) {
            db.close();
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
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            ResultSet res = db.query("SELECT * FROM cursos");

            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet CursoServlet</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet CursoServlet at " + request.getContextPath() + "</h1>");
            try {
                while (res.next()) {
                    out.println("<li>" + res.getString("nome") + "</li>");
                }
            } catch (SQLException ex) {
                Logger.getLogger(CursoServlet.class.getName()).log(Level.SEVERE, null, ex);
            }
            out.println("</body>");
            out.println("</html>");
        }
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
        // Pegar dados formularios
        request.setCharacterEncoding("UTF-8");
        String nome = request.getParameter("nome_curso");
        String requisito = request.getParameter("requisito");
        String ementa = request.getParameter("ementa");
        Short carga_horaria = Short.parseShort(request.getParameter("carga_horaria_curso"));
        Double preco = Double.parseDouble(request.getParameter("preco"));

        Curso novo_curso = new Curso(nome, requisito, ementa, carga_horaria, preco);
        // db.insert(novo_curso.toTable(), novo_curso.toColumns(), novo_curso.toValues());

        // SELECT
        ResultSet res = db.query("SELECT * FROM cursos WHERE nome=" + "'" + nome + "'");
        List<Curso> cursos = new ArrayList<Curso>();
        try {
            while (res.next()) {
                String nome_res = res.getString("nome");
                String requisito_res = res.getString("requisito");
                String ementa_res = res.getString("ementa");
                Short carga_horaria_res = Short.parseShort(res.getString("carga_horaria"));
                Double preco_res = Double.parseDouble(res.getString("preco"));
                cursos.add(new Curso(nome_res, requisito_res, ementa_res, carga_horaria_res, preco_res));
            }
        } catch (SQLException ex) {
            Logger.getLogger(CursoServlet.class.getName()).log(Level.SEVERE, null, ex);
        }

        request.setAttribute("cursos", cursos);
        request.getRequestDispatcher("confirma_curso.jsp").forward(request, response);

    }

    /**
     * Returns a short description of the servlet.
     *
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
