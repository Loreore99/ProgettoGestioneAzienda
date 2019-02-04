package Servlet;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import business.AziendaManager;
import modello.Azienda;

/**
 * Servlet implementation class IscrizioneAziendaServlet
 */
@WebServlet("/IscrizioneAziendaServlet")
public class IscrizioneAziendaServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public IscrizioneAziendaServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		Azienda a = new Azienda();
		a.setNome(request.getParameter("nome"));
		a.setTipo(request.getParameter("tipo"));
		a.setCapitale(Double.parseDouble(request.getParameter("capitale"))); 
		a.setUsername(request.getParameter("username"));
		a.setPassword(request.getParameter("password"));
		a.setEmail(request.getParameter("email"));
		
			try {
				AziendaManager.aggiungiAzienda(a);
				response.sendRedirect(request.getContextPath()+"/DettagliInserimentoAzienda.jsp"); // la servlet visualizza una pagina vuota. 
				//Questa istruzione serve per reindirizzare alla pagina precedente
			} catch (ClassNotFoundException e) {
				// TODO Auto-generated catch block
				e.printStackTrace(); // redirect a pagine di errore
				System.out.println(e.getMessage());
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
				System.out.println(e.getMessage());
			}
	
	}

}
