package modello;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.ManyToMany;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;

@Entity
public class Lavoratore {

	@Id
	@OneToOne (mappedBy = "idLavoratore")
	private String id;
	private String nome;
	private String cognome;
	private String codiceFiscale;
	private Float stipendio;
	private Float oreLavorate;
	private Float ferie;
	private String email;
	@ManyToMany(mappedBy = "progettoAttivo")
	@OneToMany(mappedBy = "idLav")
	private String progetto;
	
	
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
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
	public Float getStipendio() {
		return stipendio;
	}
	public void setStipendio(Float stipendio) {
		this.stipendio = stipendio;
	}
	public Float getOreLavorate() {
		return oreLavorate;
	}
	public void setOreLavorate(Float oreLavorate) {
		this.oreLavorate = oreLavorate;
	}
	public Float getFerie() {
		return ferie;
	}
	public void setFerie(Float ferie) {
		this.ferie = ferie;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getProgetto() {
		return progetto;
	}
	public void setProgetto(String progetto) {
		this.progetto = progetto;
	}
	
	
	
	
	
	
}
