package test;

import static org.junit.Assert.fail;

import java.sql.SQLException;
import java.util.Scanner;

import org.junit.Test;

import business.AziendaManager;
import modello.Azienda;

public class AziendaManagerTest {

	@Test
	public void testAggiungiAzienda() throws ClassNotFoundException, SQLException {
		Azienda a = new Azienda();
		setAzienda(a);
		AziendaManager.aggiungiAzienda(a);
	}

	@Test
	public void testRimuoviAzienda() {
		Scanner sc = new Scanner(System.in);
	   
		//Azienda a = new Azienda();
		System.out.println("inserisci nome dell'azienda da rimuovere > " );
		//a.setNome(sc.nextLine());
		AziendaManager.rimuoviAzienda(sc.nextLine());
	}
	


	public static void setAzienda (Azienda a){
		Scanner sc = new Scanner(System.in);
		System.out.print("inserisci nome azienda > ");
		a.setNome(sc.nextLine());
		System.out.print("inserisci tipo azienda > ");
		a.setTipo(sc.nextLine());
		System.out.print("inserisci capitale azienda > ");
		a.setCapitale(sc.nextDouble());
	}
}
