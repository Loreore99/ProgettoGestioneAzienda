package modello;

import java.util.List;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;

@Entity
public class Progetto {
	@Id
	private String nome;
	private String andamento;
	
	@ManyToMany(mappedBy = "progetti")
	private List<Lavoratore> team;
	
	@OneToMany(mappedBy = "progettoAttivo")
	private List<Lavoratore> teamAttivo;
	
	@ManyToOne
	private Cliente cliente;
	
	@ManyToOne
	private Azienda supervisore;

	public String getNome() {
		return nome;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}

	public String getAndamento() {
		return andamento;
	}

	public void setAndamento(String andamento) {
		this.andamento = andamento;
	}

	public List<Lavoratore> getTeam() {
		return team;
	}

	public void setTeam(List<Lavoratore> team) {
		this.team = team;
	}

	public List<Lavoratore> getTeamAttivo() {
		return teamAttivo;
	}

	public void setTeamAttivo(List<Lavoratore> teamAttivo) {
		this.teamAttivo = teamAttivo;
	}

	public Cliente getCliente() {
		return cliente;
	}

	public void setCliente(Cliente cliente) {
		this.cliente = cliente;
	}

	public Azienda getSupervisore() {
		return supervisore;
	}

	public void setSupervisore(Azienda supervisore) {
		this.supervisore = supervisore;
	}
	
	
	
}
