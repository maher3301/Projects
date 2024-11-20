package tn.essat.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import tn.essat.dao.GestionIMP;
import tn.essat.model.AppUser;

/**
 * Servlet implementation class RegisterServlet
 */
public class RegisterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RegisterServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
		// TODO Auto-generated method stub
		 protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			 String nom = request.getParameter("nom");
		        String prenom = request.getParameter("prenom");
		        String login = request.getParameter("login");
		        String password = request.getParameter("password");

		        GestionIMP gestion = new GestionIMP();
		        AppUser user = new AppUser(nom, prenom, login, password);

		        if (gestion.registerUser(user)) {
		            response.sendRedirect("login.jsp");
		        } else {
		            response.sendRedirect("register.jsp?error=1");
		        }
		 }

}
