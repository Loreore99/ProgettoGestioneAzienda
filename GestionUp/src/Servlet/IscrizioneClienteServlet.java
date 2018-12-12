package Servlet;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import business.AziendaManager;
import business.ClienteManager;
import modello.Cliente;

/**
 * Servlet implementation class IscrizioneClienteServlet
 */
@WebServlet("/IscrizioneClienteServlet")
public class IscrizioneClienteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public IscrizioneClienteServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		Cliente c = new Cliente();
		c.setNome(request.getParameter("nome"));
		c.setCognome(request.getParameter("cognome"));
		c.setCodiceFiscale(request.getParameter("codFiscale"));
		c.setPartitaIva(request.getParameter("partitaIva"));
		c.setUsername(request.getParameter("username"));
		c.setPassword(request.getParameter("password"));
		c.setEmail(request.getParameter("email"));
		
			
		try {
			ClienteManager.aggiungiCliente(c);
			response.sendRedirect(request.getContextPath()+"/DettagliInserimento.jsp"); // la servlet visualizza una pagina vuota. 
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
