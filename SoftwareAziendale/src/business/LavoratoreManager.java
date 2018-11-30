package business;

import javax.persistence.EntityManager;

import modello.Lavoratore;
import utility.EntityManagerProvider;

public class LavoratoreManager {
	
	public static void aggiungiLavoratore(Lavoratore l ) {
		EntityManager em = EntityManagerProvider.getEntityManager();
		Lavoratore db = em.find(Lavoratore.class, l.getMatricola());
		if (db == null){
			em.getTransaction().begin();
			em.persist(l);
			em.getTransaction().commit();
			System.out.println("ho aggiunto il lavoratore con matricola "+l.getMatricola());
		}
		else
			System.out.println("la matricola "+l.getMatricola()+" è già presente");
		
	}
	
	public static void rimuoviLavoratore(Lavoratore l ) {
		EntityManager em = EntityManagerProvider.getEntityManager();
		Lavoratore db = em.find(Lavoratore.class, l.getMatricola());
		if (db != null) {
			em.getTransaction().begin();
			em.remove(db);
			em.getTransaction().commit();
			System.out.println("ho rimosso questo lavoratore");
		}
		else
			System.out.println("la matricola non è stata trovata");
	
	}
}
