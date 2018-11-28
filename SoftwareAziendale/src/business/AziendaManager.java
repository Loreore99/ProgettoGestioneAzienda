package business;

import javax.persistence.EntityManager;

import utility.EntityManagerProvider;
import modello.Azienda;


public class AziendaManager {

	public static void aggiungiAzienda(Azienda a ) {
		EntityManager em = EntityManagerProvider.getEntityManager();
		em.getTransaction().begin();
		em.persist(a);
		em.getTransaction().commit();
	}
	
	public static void rimuoviAzienda(Azienda a ) {
		EntityManager em = EntityManagerProvider.getEntityManager();
		Azienda db = em.find(Azienda.class, a.getNome());
		if (db != null) {
			em.getTransaction().begin();
			em.remove(db);
			em.getTransaction().commit();
			System.out.println("ho rimosso questa azienda");
		}
		else
			System.out.println("il nome di questa azienda non è stato trovato");
	
	/*public static void modificaNomeAzienda (Azienda a) {
		EntityManager em = EntityManagerProvider.getEntityManager();
		Azienda db = em.find(Azienda.class, a.getNome());
		if (db != null){
			
		}
	}
	*/
	}
}
