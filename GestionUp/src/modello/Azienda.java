package modello;

import java.util.List;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.ManyToMany;
import javax.persistence.OneToMany;

@Entity
public class Azienda extends Utenza {
	
	private String nome;
	private String tipo;
	private Double capitale;
	
	@OneToMany(mappedBy="azienda")
	private List<Lavoratore> lavoratori; // serve per l'associazione con lavoratore
	
	
	@ManyToMany(mappedBy="fornitori")
	private List<Cliente> clienti; // serve per l'associazione con cliente
	

	@OneToMany(mappedBy="supervisore")
	private List<Progetto> progettiSupervisionati;
	
	

	public String getNome() {
		return nome;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}

	public String getTipo() {
		return tipo;
	}

	public void setTipo(String tipo) {
		this.tipo = tipo;
	}

	public Double getCapitale() {
		return capitale;
	}

	public void setCapitale(Double capitale) {
		this.capitale = capitale;
	}

	public List<Lavoratore> getLavoratori() {
		return lavoratori;
	}

	public void setLavoratori(List<Lavoratore> lavoratori) {
		this.lavoratori = lavoratori;
	}

	public List<Cliente> getClienti() {
		return clienti;
	}

	public void setClienti(List<Cliente> clienti) {
		this.clienti = clienti;
	}

	public List<Progetto> getProgettiSupervisionati() {
		return progettiSupervisionati;
	}

	public void setProgettiSupervisionati(List<Progetto> progettiSupervisionati) {
		this.progettiSupervisionati = progettiSupervisionati;
	}
	
}
