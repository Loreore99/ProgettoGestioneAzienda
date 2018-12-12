package business;

import java.sql.SQLException;

import javax.persistence.EntityManager;

import modello.Cliente;
import modello.Lavoratore;
import utility.EntityManagerProvider;

public class ClienteManager {
	public static boolean aggiungiCliente(Cliente c )  throws ClassNotFoundException, SQLException{
		boolean result = false; // per il feedback all'utente
		EntityManager em = EntityManagerProvider.getEntityManager();
		Cliente db = em.find(Cliente.class, c.getUsername());
		if(db == null){
			em.getTransaction().begin();
			em.persist(c);
			em.getTransaction().commit();
			System.out.println("ho aggiunto il cliente");
			result = true;
		}
		else
			System.out.println("questo cliente è già presente");
		
		return result;
		
	}
	
	public static void rimuoviCliente(Cliente c ) {
		EntityManager em = EntityManagerProvider.getEntityManager();
		Cliente db = em.find(Cliente.class, c.getPartitaIva());
		if (db != null) {
			em.getTransaction().begin();
			em.remove(db);
			em.getTransaction().commit();
			System.out.println("ho rimosso il cliente con partita Iva "+c.getPartitaIva());
		}
		else
			System.out.println("il cliente con partita Iva " +c.getPartitaIva()+ " non è presente");
	
	}
}
