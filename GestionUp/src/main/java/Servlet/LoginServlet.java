package Servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import business.Login;
import modello.Azienda;
import modello.Cliente;
import modello.Lavoratore;
import modello.Utenza;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/login")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		Utenza u = Login.login(username, password);
		if (u != null) {
			request.setAttribute("esito", true);
			if (u instanceof Cliente) {
				request.getRequestDispatcher("HomeCliente.jsp").forward(request, response);	
			} else if (u instanceof Azienda) {
				request.getRequestDispatcher("HomeAzienda.jsp").forward(request, response);		
			} else if (u instanceof Lavoratore) {
				request.getRequestDispatcher("HomeLavoratore.jsp").forward(request, response);
			}
		} else {
			request.setAttribute("esito", false);
			request.getRequestDispatcher("index.jsp").forward(request, response);
		}
	}

}
