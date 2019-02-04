package Servlet;

import java.io.IOException;
import java.util.Date;

import javax.persistence.EntityManager;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import business.RegistroOreManager;
import modello.RegistroOre;
import utility.EntityManagerProvider;

/**
 * Servlet implementation class OraFineServlet
 */
@WebServlet("/fine")
public class OraFineServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public OraFineServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		String user = request.getParameter("username");
		if (user != null) {
			EntityManager em = EntityManagerProvider.getEntityManager();
			RegistroOre db  = em.createQuery("select r from RegistroOre r where r.lav.username = :username AND r.oraFine IS null", RegistroOre.class)
					.setParameter("username", user)
					.getSingleResult();
			
			RegistroOreManager.Fine(db);
			
			long minuti = (db.getOraFine().getTime() - db.getOraInizio().getTime()) / (1000 * 60);
			long oreLavorate = (long)minuti / 60;
			long minutiLavorati = minuti - (oreLavorate * 60);
			request.setAttribute("oreLavorate", oreLavorate);
			request.setAttribute("minutiLavorati", minutiLavorati);
			request.getRequestDispatcher("HomeLavoratore.jsp").forward(request, response);
		}
		
	}

}
