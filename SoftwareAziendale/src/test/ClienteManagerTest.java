package test;

import static org.junit.Assert.fail;

import java.util.Scanner;

import org.junit.Test;

import business.AziendaManager;
import business.ClienteManager;
import modello.Azienda;
import modello.Cliente;

public class ClienteManagerTest {

	//@Test
	/*public void testAggiungiCliente() {
		Cliente c = new Cliente();
		setCliente(c);
		ClienteManager.aggiungiCliente(c);
	}
*/
	@Test
	public void testRimuoviCliente() {
		Scanner sc = new Scanner(System.in);
		   
		Cliente c = new Cliente();
		System.out.println("inserisci partita Iva del cliente da rimuovere > " );
		c.setPartitaIva(sc.nextLine());
		ClienteManager.rimuoviCliente(c);
	}

	public static void setCliente (Cliente c){
		Scanner sc = new Scanner(System.in);
		System.out.print("inserisci nome cliente > ");
		c.setNome(sc.nextLine());
		System.out.print("inserisci cognome cliente > ");
		c.setCognome(sc.nextLine());
		System.out.print("inserisci codice fiscale del cliente > ");
		c.setCodiceFiscale(sc.nextLine());
		System.out.print("inserisci partita Iva del cliente > ");
		c.setPartitaIva(sc.nextLine());
	}
	
}
