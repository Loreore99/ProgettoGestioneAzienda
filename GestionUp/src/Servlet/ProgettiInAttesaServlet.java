package Servlet;

import java.io.IOException;
import java.util.List;

import javax.persistence.EntityManager;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.fasterxml.jackson.databind.ObjectMapper;

import modello.Progetto;
import utility.EntityManagerProvider;

/**
 * Servlet implementation class ProgettiInAttesaServlet
 */
@WebServlet("/ProgettiInAttesaServlet")
public class ProgettiInAttesaServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ProgettiInAttesaServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		EntityManager em = EntityManagerProvider.getEntityManager();

		List<Progetto> prog = em.createQuery("select p from Progetto p", Progetto.class).getResultList();
		ObjectMapper om = new ObjectMapper();
		// conte-type informa il browser che gli sto inviando una string JSON
		response.setContentType("application/json");
		response.getWriter().append(om.writeValueAsString(prog));
		
	}

}
