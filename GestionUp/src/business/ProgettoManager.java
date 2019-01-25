package business;

import java.util.List;

import javax.persistence.EntityManager;

import modello.Progetto;
import utility.EntityManagerProvider;

public class ProgettoManager {
	public static void aggiungiProgetto(Progetto p) {
		// metodo che verrà richiamato quando un cliente richiede un progetto ad
		// un'azienda
		EntityManager em = EntityManagerProvider.getEntityManager();

		List<Progetto> progetti = em.createQuery("select p from Progetto p", Progetto.class).getResultList();

		Progetto db = em.find(Progetto.class, p.getNome());
		if (db == null) {
			em.getTransaction().begin();
			em.persist(p);
			em.getTransaction().commit();
			System.out.println("ho aggiunto il progetto " + p.getNome());
			progetti.add(p);
		} else
			System.out.println("il progetto " + p.getNome() + " è già presente");

	}

	public static void rimuoviProgetto(Progetto p) {
		// metodo che verrà richiamato quando un un'azienda ha finito e consegnato un
		// progetto
		EntityManager em = EntityManagerProvider.getEntityManager();
		
		List<Progetto> progetti = em.createQuery("select p from Progetto p", Progetto.class).getResultList();
		
		Progetto db = em.find(Progetto.class, p.getNome());
		if (db != null) {
			em.getTransaction().begin();
			em.remove(db);
			em.getTransaction().commit();
			System.out.println("ho rimosso questo progetto");
			progetti.remove(p);
		} else
			System.out.println("il nome di questo progetto non è stato trovato");
	}

	public static void assegnaProgetto(Progetto p) {
		// metodo che l'azienda richiama quando ha ricevuto un progetto da un cliente e
		// lo deve assegnare ai lavoratori
		

	}

	public static void modificaStato(Progetto p, String nuovoStato) {
		p.setAndamento(nuovoStato);
	}

}
