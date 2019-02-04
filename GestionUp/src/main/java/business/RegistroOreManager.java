package business;
import java.util.Date;
import java.util.List;

import javax.persistence.EntityManager;

import modello.Progetto;
import modello.RegistroOre;
import utility.EntityManagerProvider;

public class RegistroOreManager {
	public static void Inizio(RegistroOre registro) {	
		
		// Informazioni relative alla data
		
		Date data = new Date();
		int giorno = data.getDate();
		int mese = data.getMonth();
		int anno = data.getYear()+1900;
	
		// Informazione relative all'ora
		int ora = data.getHours();
		int minuti = data.getMinutes();
		int secondi = data.getSeconds();
		
		System.out.println(giorno+"/"+(mese+1)+"/"+anno+"  "+ora+":"+minuti+":"+secondi);
		registro.setData(data);
		registro.setOraInizio(data);
		
		EntityManager em = EntityManagerProvider.getEntityManager();
		em.getTransaction().begin();
		em.persist(registro);
		em.getTransaction().commit();
	}
	
	
  public static void Fine(RegistroOre registro) {	
		
		// Informazioni relative alla data
		
		Date data = new Date();
		int giorno = data.getDate();
		int mese = data.getMonth();
		int anno = data.getYear()+1900;
	
		// Informazione relative all'ora
		int ora = data.getHours();
		int minuti = data.getMinutes();
		int secondi = data.getSeconds();
		
		System.out.println(giorno+"/"+(mese+1)+"/"+anno+"  "+ora+":"+minuti+":"+secondi);
		
		registro.setOraFine(data);
		
		EntityManager em = EntityManagerProvider.getEntityManager();
		RegistroOre ro = em.find(RegistroOre.class, registro.getData());
		em.getTransaction().begin();
		ro.setOraFine(data);
		em.getTransaction().commit();
	}
}
