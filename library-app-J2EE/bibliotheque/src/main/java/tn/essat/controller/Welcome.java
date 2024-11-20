package tn.essat.controller;

import java.io.IOException;
import java.util.List;

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
 * Servlet implementation class Welcome
 */
public class Welcome extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Welcome() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		HttpSession session=request.getSession();
		AppUser u=(AppUser) session.getAttribute("user");
		
		if(u==null) {
			session.setAttribute("erreur", "Please, Log in first !!");
			session.setAttribute("type", "danger");
			request.getRequestDispatcher("login.jsp").forward(request, response);
		}
		 IGestion dao=new GestionIMP();
	      List<Livvre> liste =dao.getALLLivre();
	      request.setAttribute("Liste", liste);
	      request.getRequestDispatcher("home.jsp").forward(request, response);	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
