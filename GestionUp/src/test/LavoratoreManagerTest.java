package test;

import static org.junit.Assert.fail;

import java.sql.SQLException;
import java.util.Scanner;

import org.junit.Test;

import business.LavoratoreManager;
import modello.Azienda;
import modello.Lavoratore;

public class LavoratoreManagerTest {

	@Test
	public void testAggiungiLavoratore() throws ClassNotFoundException, SQLException {
		Lavoratore l = new Lavoratore();
		setLavoratore(l);
		LavoratoreManager.aggiungiLavoratore(l);
	}

	@Test
	public void testRimuoviLavoratore() {
		Scanner sc = new Scanner(System.in);
		   
		Lavoratore l = new Lavoratore();
		System.out.println("inserisci matricola del lavoratore da rimuovere > " );
		l.setMatricola(sc.nextInt());
		LavoratoreManager.rimuoviLavoratore(sc.nextLine());
	}
	
	public static void setLavoratore (Lavoratore l){
		Scanner sc = new Scanner(System.in);
		System.out.print("inserisci numero di matricola lavoratore > ");
		int n;
		l.setMatricola(n = Integer.parseInt(sc.nextLine()));
		System.out.print("inserisci nome lavoratore > ");
		l.setNome(sc.nextLine());
		System.out.print("inserisci cognome lavoratore > ");
		l.setCognome(sc.nextLine());
		System.out.print("inserisci codice fiscale lavoratore > ");
		l.setCodiceFiscale(sc.nextLine());
		System.out.print("inserisci email lavoratore > ");
		l.setEmail(sc.nextLine());
	}

}
