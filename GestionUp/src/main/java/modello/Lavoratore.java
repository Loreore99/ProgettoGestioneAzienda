package modello;

import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;

@Entity
public class Lavoratore extends Utenza{

	
	private int matricola;
	
	private String nome;
	private String cognome;
	private String codiceFiscale;
	private Float stipendio;
	private Float oreLavorate;
	private Float ferie;
	
	@ManyToOne
	private Azienda azienda;
	
	@ManyToOne
	private Progetto progettoAttivo;
	
	@ManyToMany
	private List<Progetto> progetti;
	
	@OneToMany(mappedBy = "lav", cascade=CascadeType.ALL)
	private List <RegistroOre> registri;
	
	
	
	
	public List<RegistroOre> getRegistri() {
		return registri;
	}

	public void setRegistri(List<RegistroOre> registri) {
		this.registri = registri;
	}

	public int getMatricola() {
		return matricola;
	}

	public void setMatricola(int matricola) {
		this.matricola = matricola;
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

	public Azienda getAzienda() {
		return azienda;
	}

	public void setAzienda(Azienda azienda) {
		this.azienda = azienda;
	}

	public Progetto getProgettoAttivo() {
		return progettoAttivo;
	}

	public void setProgettoAttivo(Progetto progettoAttivo) {
		this.progettoAttivo = progettoAttivo;
	}

	public List<Progetto> getProgetti() {
		return progetti;
	}

	public void setProgetti(List<Progetto> progetti) {
		this.progetti = progetti;
	}
	
}
