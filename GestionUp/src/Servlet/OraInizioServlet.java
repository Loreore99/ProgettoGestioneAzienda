package Servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import business.RegistroOreManager;
import modello.Lavoratore;
import modello.RegistroOre;

/**
 * Servlet implementation class OraInizioServlet
 */
@WebServlet("/inizio")
public class OraInizioServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public OraInizioServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		// response.getWriter().append("Served at: ").append(request.getContextPath());
		RegistroOre registro = new RegistroOre();
		Lavoratore lav = new Lavoratore();
		lav.setUsername(request.getParameter("username"));
		registro.setLav(lav);
		RegistroOreManager.Inizio(registro);
		
	}

}
