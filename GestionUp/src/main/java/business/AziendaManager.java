package business;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Logger;

import javax.persistence.EntityManager;

import modello.Azienda;
import modello.Cliente;
import utility.EntityManagerProvider;


public class AziendaManager {
	private static Logger log = Logger.getLogger("business");

	// metodo che viene richiamato quando un'azienda vuole iniziare ad utilizzare per la prima volta l'applicazione
	public static boolean aggiungiAzienda(Azienda a ) throws ClassNotFoundException, SQLException {
		boolean result = false; // per il feedback all'utente
		EntityManager em = EntityManagerProvider.getEntityManager();

	/*	int numAziende = em.createNativeQuery("select count(a) from Azienda a", Integer.class).getFirstResult();
		
		if(numAziende == 0){ // se nella tabella non c'è niente creo un nuovo arrayList
			List<Azienda> fornitori = new ArrayList <>();
		}*/
			
		Azienda db = em.find(Azienda.class, a.getNome());
		if (db == null) {
			em.getTransaction().begin();
			em.persist(a);
			em.getTransaction().commit();
			System.out.println("ho aggiunto l'azienda "+a.getNome());
			result = true;
			
		}
		else {
			System.out.println("l'azienda "+a.getNome()+" è già presente");
		}
	
		return result;
	}
	
	
	// metodo che viene richiamato quando un'azienda vuole smettere di utilizzare l'applicazione
	public static boolean rimuoviAzienda(String username ) {
		boolean result = false;
		EntityManager em = EntityManagerProvider.getEntityManager();
		Azienda db = em.find(Azienda.class, username);
		if (db != null) {
			em.getTransaction().begin();
			em.remove(db);
			em.getTransaction().commit();
			System.out.println("ho rimosso questa azienda");
			//fornitori.remove(a);
			result = true;
		}
		else
			System.out.println("il nome di questa azienda non è stato trovato");
		
		return result;
	}
	
	
	public static Connection dammiConnessione() throws ClassNotFoundException, SQLException {
		// crea connessione col DB
		Class.forName("org.mariadb.jdbc.Driver");
		Connection conn = DriverManager.getConnection("jdbc:mariadb://127.0.0.1:3306/garage", "root", "");
		return conn;
	}
}
