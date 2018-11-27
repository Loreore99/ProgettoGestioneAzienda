package modello;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;

@Entity
public class Azienda {
	@Id
	private String nome;
	private String tipo;
	private Double capitale;
	@OneToOne (mappedBy = "id")
	private Integer numLavoratori; // serve solo a sapere quanti sono i lavoratori
	private String idLavoratore; // serve per l'associazione con lavoratore
	
	private Integer numClienti;// serve solo a sapere quanti sono i clienti
	@OneToOne (mappedBy = "partitaIva") 
	private String idCliente; // serve per l'associazione con cliente
	
	private Integer numProgetti;// serve solo a sapere quanti sono i progetti attivi
	@OneToMany (mappedBy = "idAz") 
	private String nomeProg; // serve per l'associazione con progetto
	
	
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
	public Integer getNumLavoratori() {
		return numLavoratori;
	}
	public void setNumLavoratori(Integer numLavoratori) {
		this.numLavoratori = numLavoratori;
	}
	public String getIdLavoratore() {
		return idLavoratore;
	}
	public void setIdLavoratore(String idLavoratore) {
		this.idLavoratore = idLavoratore;
	}
	public Integer getNumClienti() {
		return numClienti;
	}
	public void setNumClienti(Integer numClienti) {
		this.numClienti = numClienti;
	}
	public String getIdCliente() {
		return idCliente;
	}
	public void setIdCliente(String idCliente) {
		this.idCliente = idCliente;
	}
	public Integer getNumProgetti() {
		return numProgetti;
	}
	public void setNumProgetti(Integer numProgetti) {
		this.numProgetti = numProgetti;
	}
	public String getNomeProg() {
		return nomeProg;
	}
	public void setNomeProg(String nomeProg) {
		this.nomeProg = nomeProg;
	}
	
	
}
