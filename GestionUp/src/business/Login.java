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
	
	public static Utenza login(String username, String password) {
		Utenza result = null;

		EntityManager em = EntityManagerProvider.getEntityManager();
//			Utenza u = em.createQuery("select u from Utenza u where u.TIPO_UTENTE ='Cliente'", Utenza.class)
//					//.setParameter("username", username).getSingleResult();
		
			Utenza u = em.find(Utenza.class, username); // trovo l'username
			if (u != null && u.getPassword().equals(password)) { 
				result = u;
			} else {
				log.info("wrong password issued");
				log.info("login of " + username + ": not available");
			}
		return result;
	}

}
