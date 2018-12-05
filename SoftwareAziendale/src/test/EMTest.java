package test;

import static org.junit.Assert.*;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

import org.junit.Test;

public class EMTest {

	@Test
	public void test() {
		EntityManagerFactory emf = Persistence.createEntityManagerFactory("SoftwareAziendale");
		EntityManager em = emf.createEntityManager();
		// creo fisicamente sul db le tabelle con le varie relazioni
	}

}
