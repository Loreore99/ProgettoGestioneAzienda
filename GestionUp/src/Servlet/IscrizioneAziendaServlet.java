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
		
		String nome = request.getParameter("nome");
		String tipo = request.getParameter("tipo");
		double capitale = Double.parseDouble(request.getParameter("capitale"));
		Azienda a = new Azienda();
		a.setUsername("provausername");
		a.setPassword("provapassword");
		a.setEmail("provaemail");
		a.setNome(nome);
		a.setTipo(tipo);
		a.setCapitale(capitale);
		System.out.println("prova");
			try {
				System.out.println("aaa");
				AziendaManager.aggiungiAzienda(a);
			} catch (ClassNotFoundException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
				System.out.println(e.getMessage());
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
				System.out.println(e.getMessage());
			}
	
	}

}
