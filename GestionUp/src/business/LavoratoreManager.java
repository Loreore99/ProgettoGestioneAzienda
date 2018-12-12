package business;

import java.sql.SQLException;

import javax.persistence.EntityManager;

import modello.Lavoratore;
import utility.EntityManagerProvider;

public class LavoratoreManager {
	// questo metodo viene richiamato quando un'azienda vuole assumere un dipendente
	public static boolean aggiungiLavoratore(Lavoratore l ) throws ClassNotFoundException, SQLException{
		boolean result = false;
		EntityManager em = EntityManagerProvider.getEntityManager();
		Lavoratore db = em.find(Lavoratore.class, l.getUsername());
		if (db == null){
			em.getTransaction().begin();
			em.persist(l);
			em.getTransaction().commit();
			System.out.println("ho aggiunto il lavoratore con matricola "+l.getMatricola());
			result = true;
		}
		else
			System.out.println("la matricola "+l.getMatricola()+" è già presente");
		
		
		return result;
		
	}
	
	public static boolean rimuoviLavoratore(Lavoratore l ) {
		boolean result = false;
		EntityManager em = EntityManagerProvider.getEntityManager();
		Lavoratore db = em.find(Lavoratore.class, l.getUsername());
		if (db != null) {
			em.getTransaction().begin();
			em.remove(db);
			em.getTransaction().commit();
			System.out.println("ho rimosso questo lavoratore");
			result = true;
		}
		else
			System.out.println("la matricola non è stata trovata");
		
		return result;
	
	}
}
