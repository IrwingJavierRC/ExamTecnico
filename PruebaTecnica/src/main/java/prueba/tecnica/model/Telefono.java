package prueba.tecnica.model;

public class Telefono {
	
	
	private String idTelefono;
	private String numero;
	private String lada;
	
	
	public Telefono() {
		
	}

	
	
	public Telefono(String idTelefono, String numero, String lada) {
		super();
		this.idTelefono = idTelefono;
		this.numero = numero;
		this.lada = lada;
	}





	public String getIdTelefono() {
		return idTelefono;
	}


	public void setIdTelefono(String idTelefono) {
		this.idTelefono = idTelefono;
	}


	public String getNumero() {
		return numero;
	}


	public void setNumero(String numero) {
		this.numero = numero;
	}


	public String getLada() {
		return lada;
	}


	public void setLada(String lada) {
		this.lada = lada;
	}
	

}
