package modello;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.ManyToMany;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;

@Entity
public class Cliente {

	private String nome;
	private String cognome;
	private String codiceFiscale;
	@Id
	@OneToOne (mappedBy = "idCliente")
	private String partitaIva;
	@ManyToMany(mappedBy = "progetto")
	@OneToMany(mappedBy = "idCli")
	private String progettoAttivo;
	
	
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
	public String getProgettoAttivo() {
		return progettoAttivo;
	}
	public void setProgettoAttivo(String progettoAttivo) {
		this.progettoAttivo = progettoAttivo;
	}
	
	
	
}
