package Servlet;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import business.LavoratoreManager;
import modello.Lavoratore;

/**
 * Servlet implementation class AssumiLavoratoreServlet
 */
@WebServlet("/AssumiLavoratoreServlet")
public class AssumiLavoratoreServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AssumiLavoratoreServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		Lavoratore l = new Lavoratore();
	
		l.setMatricola(Integer.parseInt(request.getParameter("matricola")));
		l.setNome(request.getParameter("nome"));
		l.setCognome(request.getParameter("cognome")); 
		l.setCodiceFiscale(request.getParameter("codFiscale"));
		l.setUsername(request.getParameter("username"));
		l.setPassword(request.getParameter("password"));
		
			try {
				LavoratoreManager.aggiungiLavoratore(l);
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
