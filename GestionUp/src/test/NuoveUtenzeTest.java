package test;

import javax.persistence.EntityManager;

import org.junit.Test;

import modello.Azienda;
import modello.Cliente;
import modello.Lavoratore;
import utility.EntityManagerProvider;

public class NuoveUtenzeTest {

	@Test
	public void test() {
		EntityManager em = EntityManagerProvider.getEntityManager();
		
		Cliente c = new Cliente();
		c.setUsername("testutente");
		c.setPassword("pass");
		em.getTransaction().begin();
		em.persist(c);
		em.getTransaction().commit();
		
		
		Azienda a = new Azienda();
		a.setUsername("apple");
		a.setPassword("miapass");
		em.getTransaction().begin();
		em.persist(a);
		em.getTransaction().commit();
		
		Lavoratore l = new Lavoratore();
		l.setUsername("pippo");
		l.setPassword("pippopass");
		em.getTransaction().begin();
		em.persist(l);
		em.getTransaction().commit();
	}

}
