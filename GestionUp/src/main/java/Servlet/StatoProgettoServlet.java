package Servlet;

import java.io.IOException;
import java.util.List;

import javax.persistence.EntityManager;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import modello.Progetto;
import utility.EntityManagerProvider;

/**
 * Servlet implementation class StatoProgettoServlet
 */
@WebServlet("/StatoProgettoServlet")
public class StatoProgettoServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public StatoProgettoServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		EntityManager em = EntityManagerProvider.getEntityManager();

		Progetto p = em.find (Progetto.class, request.getParameter("nome"));
		request.setAttribute("progetto", p);
		request.getRequestDispatcher("StatoProgetto.jsp").forward(request, response);
	}

}
