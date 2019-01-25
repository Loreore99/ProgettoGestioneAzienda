package Servlet;

import java.io.IOException;

import javax.persistence.EntityManager;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import business.RegistroOreManager;
import modello.Progetto;
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
		EntityManager em = EntityManagerProvider.getEntityManager();
		RegistroOre db  = em.createQuery("select r from RegistroOre where RegistroOre.lav_username == request.getParameter(\"username\")", RegistroOre.class).getSingleResult();
		
		RegistroOreManager.Fine(db);
	}

}
