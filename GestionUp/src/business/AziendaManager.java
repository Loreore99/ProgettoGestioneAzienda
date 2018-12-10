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
		
		log.info("AziendaManager aggiungiAzienda fuori if " + a.getUsername());

		int numAziende = em.createNativeQuery("select count(a) from Azienda a", Integer.class).getFirstResult();
		log.info("AziendaManager aggiungiAzienda count " + numAziende);

		if(numAziende == 0){ // se nella tabella non c'è niente creo un nuovo arrayList
			List<Azienda> fornitori = new ArrayList <>();
			log.info("AziendaManager aggiungiAzienda creaLista ");
		}
			
	//	Cliente c = new Cliente();
		Azienda db = em.find(Azienda.class, a.getNome());
		if (db == null) {
			log.info("AziendaManager aggiungiAzienda dbAzienda is null ");
			em.getTransaction().begin();
			em.persist(a);
		//	c.getFornitori().add(a);
			em.getTransaction().commit();
			System.out.println("ho aggiunto l'azienda "+a.getNome());
			result = true;
			
		}
		else {
			System.out.println("l'azienda "+a.getNome()+" è già presente");
			log.info("AziendaManager aggiungiAzienda dbAzienda nome =  " + a.getNome());

		}
	
		return result;
	}
	// metodo che viene richiamato quando un'azienda vuole smettere di utilizzare l'applicazione
	public static void rimuoviAzienda(Azienda a ) {
		EntityManager em = EntityManagerProvider.getEntityManager();
		Azienda db = em.find(Azienda.class, a.getNome());
		if (db != null) {
			em.getTransaction().begin();
			em.remove(db);
			em.getTransaction().commit();
			System.out.println("ho rimosso questa azienda");
			//fornitori.remove(a);
		}
		else
			System.out.println("il nome di questa azienda non è stato trovato");
	}
	
	
	public static Connection dammiConnessione() throws ClassNotFoundException, SQLException {
		// crea connessione col DB
		Class.forName("org.mariadb.jdbc.Driver");
		Connection conn = DriverManager.getConnection("jdbc:mariadb://127.0.0.1:3306/garage", "root", "");
		return conn;
	}
}
