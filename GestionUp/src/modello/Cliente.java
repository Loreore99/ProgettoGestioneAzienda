package modello;

import java.util.List;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.ManyToMany;
import javax.persistence.OneToMany;

@Entity
public class Cliente extends Utenza {

	private String nome;
	private String cognome;
	private String codiceFiscale;
	
	private String partitaIva;
	
	@ManyToMany
	private List<Azienda> fornitori;
	
	@OneToMany(mappedBy="cliente")
	private List<Progetto> progetti;

	public String getNome() {
		return nome;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}

	public String getCognome() {
		return cognome;
	}

	public void setCognome(String cognome) {
		this.cognome = cognome;
	}

	public String getCodiceFiscale() {
		return codiceFiscale;
	}

	public void setCodiceFiscale(String codiceFiscale) {
		this.codiceFiscale = codiceFiscale;
	}

	public String getPartitaIva() {
		return partitaIva;
	}

	public void setPartitaIva(String partitaIva) {
		this.partitaIva = partitaIva;
	}

	public List<Azienda> getFornitori() {
		return fornitori;
	}

	public void setFornitori(List<Azienda> fornitori) {
		this.fornitori = fornitori;
	}

	public List<Progetto> getProgetti() {
		return progetti;
	}

	public void setProgetti(List<Progetto> progetti) {
		this.progetti = progetti;
	}
	
}
