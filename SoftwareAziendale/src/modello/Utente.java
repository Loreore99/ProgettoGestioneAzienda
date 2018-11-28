package modello;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Inheritance;
import javax.persistence.InheritanceType;

@Entity
@Inheritance(strategy=InheritanceType.JOINED) // attivo l'ereditarietà sulla super classe
public class Utente {
	@Id
	private Integer id;
	private String username;
	private String password;

}
