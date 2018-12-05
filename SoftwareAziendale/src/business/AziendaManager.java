package business;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import javax.persistence.EntityManager;

import modello.Azienda;
import utility.EntityManagerProvider;


public class AziendaManager {
	// metodo che viene richiamato quando un'azienda vuole iniziare ad utilizzare per la prima volta l'applicazione
	public static void aggiungiAzienda(Azienda a ) throws ClassNotFoundException, SQLException {
		EntityManager em = EntityManagerProvider.getEntityManager();
		Statement comandoSql = dammiConnessione().createStatement(); 
		ResultSet dati = comandoSql.executeQuery("select * from automobili");
		em.createQuery("select * from Azienda");
		int i = 0;
		while (dati.next()) {
			i++;
		}
		
		if(i == 0){ // se nella tabella non c'è niente creo un nuovo arrayList
			List<Azienda> fornitori = new ArrayList <>();
		}
			
		
		Azienda db = em.find(Azienda.class, a.getNome());
		if (db == null && i == 0) {
			em.getTransaction().begin();
			em.persist(a);
			em.getTransaction().commit();
			System.out.println("ho aggiunto l'azienda "+a.getNome());
			//fornitori.add(a);
			
		}
		else
			System.out.println("l'azienda "+a.getNome()+" è già presente");
	
		
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
