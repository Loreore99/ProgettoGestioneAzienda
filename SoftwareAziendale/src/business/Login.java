package business;

import java.util.logging.Logger;

import javax.persistence.EntityManager;

import modello.Azienda;
import modello.Cliente;
import modello.Lavoratore;
import utility.EntityManagerProvider;

public class Login {
	
	private static Logger log = Logger.getLogger("business");
	
	public static Boolean loginCliente(String username, String password) {
		Boolean result = false;
		
		while(result == false) {
			EntityManager em = EntityManagerProvider.getEntityManager();
			Cliente c = em.find(Cliente.class, username);
			if (c.getUsername().equals(username) == false ) {
				log.info("Username not found");
				log.info("login of " + username + ": not available");
				result = false;
			}
			
			c = em.find(Cliente.class, password);
			if(c.getPassword().equals(password) == false) {
				log.info("Password not found");
				log.info("login of " + username + ": not available");
				result = false;
			}
			
			
		}
		return true;

	}
	
	public static Boolean loginLavoratore(String username, String password) {
		Boolean result = false;
		while(result == false) {
			EntityManager em = EntityManagerProvider.getEntityManager();
			Lavoratore l = em.find(Lavoratore.class, username);
			if (l.getUsername().equals(username) == false ) {
				log.info("Username not found");
				log.info("login of " + username + ": not available");
				result = false;
			}
			
			l = em.find(Lavoratore.class, password);
			if(l.getPassword().equals(password) == false) {
				log.info("Password not found");
				log.info("login of " + username + ": not available");
				result = false;
			}
			
			
		}
		return true;

		}
	
	public static Boolean loginAzienda(String username, String password) {
		Boolean result = false;
		while(result == false) {
			EntityManager em = EntityManagerProvider.getEntityManager();
			Azienda a = em.find(Azienda.class, username);
			if (a.getUsername().equals(username) == false ) {
				log.info("Username not found");
				log.info("login of " + username + ": not available");
				result = false;
			}
			
			a = em.find(Azienda.class, password);
			if(a.getPassword().equals(password) == false) {
				log.info("Password not found");
				log.info("login of " + username + ": not available");
				result = false;
			}
			
			
		}
		return true;
			
	}
}
