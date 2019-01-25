package business;

import javax.persistence.EntityManager;

import modello.Progetto;
import modello.RegistroOre;
import utility.EntityManagerProvider;

public class CalcoloOre {
	public static float calcolaOreProgetto(Progetto p ) {
		EntityManager em = EntityManagerProvider.getEntityManager();
		Progetto db = em.find(Progetto.class, p.getNome());
		
		float somma = 0;
		for (RegistroOre reg : db.getRegistri()) {
			//somma += reg.getOraFine() - reg.getOraInizio();
		}
		return somma;
	}
}
