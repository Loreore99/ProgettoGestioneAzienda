package modello;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.ManyToOne;

@Entity
public class Progetto {
	@Id
	private String nome;
	private String andamento;
	@ManyToOne
	private String idLav;
	@ManyToOne
	private String idCli;
	@ManyToOne
	private String idAz;
	
	
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
	public String getIdLav() {
		return idLav;
	}
	public void setIdLav(String idLav) {
		this.idLav = idLav;
	}
	public String getIdCli() {
		return idCli;
	}
	public void setIdCli(String idCli) {
		this.idCli = idCli;
	}
	public String getIdAz() {
		return idAz;
	}
	public void setIdAz(String idAz) {
		this.idAz = idAz;
	}
}
