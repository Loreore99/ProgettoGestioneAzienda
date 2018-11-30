package modello;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
@Entity
public class RegistroOre {
	
	@ManyToOne
	Lavoratore lav;
	
	@ManyToOne
	Progetto prog;
	
	Float oraInizio;
	Float oraFine;
	@Id
	@Temporal(TemporalType.TIMESTAMP)
	Date data;
	String nota;
	
	
	public Lavoratore getLav() {
		return lav;
	}
	public void setLav(Lavoratore lav) {
		this.lav = lav;
	}
	public Progetto getProg() {
		return prog;
	}
	public void setProg(Progetto prog) {
		this.prog = prog;
	}
	public Float getOraInizio() {
		return oraInizio;
	}
	public void setOraInizio(Float oraInizio) {
		this.oraInizio = oraInizio;
	}
	public Float getOraFine() {
		return oraFine;
	}
	public void setOraFine(Float oraFine) {
		this.oraFine = oraFine;
	}
	public Date getData() {
		return data;
	}
	public void setData(Date data) {
		this.data = data;
	}
	public String getNota() {
		return nota;
	}
	public void setNota(String nota) {
		this.nota = nota;
	}
	
	
}
