package test;

import static org.junit.Assert.fail;

import java.util.Scanner;

import javax.persistence.EntityManager;

import org.junit.Test;

import business.ProgettoManager;
import modello.Cliente;
import modello.Progetto;
import utility.EntityManagerProvider;

public class ProgettoManagerTest {

	@Test
	public void testAggiungiProgetto() {
		Progetto p = new Progetto();
		setProgetto(p);
		ProgettoManager.aggiungiProgetto(p);
	}

	/*
	 * @Test public void testRimuoviProgetto() { fail("Not yet implemented"); }
	 */

	public static void setProgetto(Progetto p) {
		Scanner sc = new Scanner(System.in);
		System.out.print("inserisci nome progetto > ");
		p.setNome(sc.nextLine());
		System.out.print("inserisci partita Iva del cliente che ha richiesto il progetto > ");
		EntityManager em = EntityManagerProvider.getEntityManager();
		Cliente c = em.find(Cliente.class, sc.nextLine());
		if (c != null) {
			em.getTransaction().begin();
			p.setCliente(c);
			c.getProgetti().add(p);
			em.getTransaction().commit();
		}
	}

}
