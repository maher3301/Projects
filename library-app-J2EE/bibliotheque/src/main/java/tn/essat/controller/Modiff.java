package tn.essat.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import tn.essat.dao.GestionIMP;
import tn.essat.dao.IGestion;
import tn.essat.model.AppUser;
import tn.essat.model.Livvre;

/**
 * Servlet implementation class Modiff
 */
public class Modiff extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Modiff() {
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
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session=request.getSession();
		AppUser u=(AppUser) session.getAttribute("user");
		
		if(u==null) {
			session.setAttribute("erreur", "Please, Log in first !!");
			session.setAttribute("type", "danger");
			request.getRequestDispatcher("login.jsp").forward(request, response);
		}
		// TODO Auto-generated method stub
	    String id = request.getParameter("id");
	    String titre = request.getParameter("titre");
	    String quantite = request.getParameter("quantite");
	    
        int quantite1 = Integer.parseInt(quantite);
        int id1 = Integer.parseInt(id);

	    Livvre lv= new Livvre(id1, titre, quantite1);
	    
	    IGestion dao = new GestionIMP();
	    dao.modifierLivre(lv);
	    
	    response.sendRedirect("Welcome");
	}
	}


