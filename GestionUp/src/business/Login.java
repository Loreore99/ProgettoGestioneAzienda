package business;

import java.util.logging.Logger;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceException;

import modello.Azienda;
import modello.Cliente;
import modello.Lavoratore;
import modello.Utenza;
import utility.EntityManagerProvider;

public class Login {

	private static Logger log = Logger.getLogger("business");

	public static Boolean loginCliente(String username, String password) {
		Boolean result = false;

		EntityManager em = EntityManagerProvider.getEntityManager();
//			Utenza u = em.createQuery("select u from Utenza u where u.TIPO_UTENTE ='Cliente'", Utenza.class)
//					//.setParameter("username", username).getSingleResult();
		
			Utenza u = em.find(Utenza.class, username); // trovo l'username
			if (u != null && u instanceof Cliente && u.getPassword().equals(password)) { 
				result = true;
			} else {
				log.info("wrong password issued");
				log.info("login of " + username + ": not available");
			}

		return result;

	}

	public static Boolean loginLavoratore(String username, String password) {
		Boolean result = false;

		EntityManager em = EntityManagerProvider.getEntityManager();
		
		/*Lavoratore l = em.createQuery("select l from Lavoratore l where l.TIPO_UTENTE ='Lavoratore'", Lavoratore.class)
		.setParameter("username", username).getSingleResult();*/
		
		Utenza u = em.find(Utenza.class, username);
		if (u != null && u instanceof Lavoratore && u.getPassword().equals(password)) {
			result = true;
		} else {
			log.info("wrong password issued");
			log.info("login of " + username + ": not available");
		}
			
	
		return result;

	}

	public static Boolean loginAzienda(String username, String password) {
		Boolean result = false;

		EntityManager em = EntityManagerProvider.getEntityManager();
		
			/*Azienda a = em.createQuery("select a from Azienda a where a.TIPO_UTENTE ='Azienda'", Azienda.class)
					.setParameter("username", username).getSingleResult();*/
			
		Utenza u = em.find(Utenza.class, username);
		if (u != null && u instanceof Azienda && u.getPassword().equals(password)) {
			result = true;
		} else {
			log.info("wrong password issued");
			log.info("login of " + username + ": not available");
		}
			
	
		return result;

	}

}
