package test;

import static org.junit.Assert.*;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

import org.junit.Before;
import org.junit.Test;

public class LoginTest {

	EntityManager em;
	@Before
	public void inizializza() {
		EntityManagerFactory emf = Persistence.createEntityManagerFactory("EsempioEcommerce");
		this.em = emf.createEntityManager();
	}
	
	@Test
	public void testLoginCliente() {
		fail("Not yet implemented");
	}

	@Test
	public void testLoginLavoratore() {
		fail("Not yet implemented");
	}

	@Test
	public void testLoginAzienda() {
		fail("Not yet implemented");
	}

}
