package Servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import business.ProgettoManager;
import modello.Cliente;
import modello.Progetto;

/**
 * Servlet implementation class RichiediProgettoServlet
 */
@WebServlet("/RichiediProgettoServlet")
public class RichiediProgettoServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public RichiediProgettoServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		Progetto p = new Progetto();
		p.setNome(request.getParameter("nome"));
		Cliente c = new Cliente();
		c.setUsername(request.getParameter("username"));
		p.setCliente(c);
		p.setAndamento("da approvare");
		ProgettoManager.aggiungiProgetto(p);
		request.setAttribute("esito", true);
		request.getRequestDispatcher("RichiediProgetto.jsp").forward(request, response);
	}
}
