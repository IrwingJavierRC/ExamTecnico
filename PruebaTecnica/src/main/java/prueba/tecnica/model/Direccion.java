package prueba.tecnica.model;

public class Direccion {

	private String idDireccion;
	private String nombre;
	private String numero;
	
	
	public Direccion(String idDireccion, String nombre, String numero) {
		super();
		this.idDireccion = idDireccion;
		this.nombre = nombre;
		this.numero = numero;
	}


	public Direccion() {
		// TODO Auto-generated constructor stub
	}


	public String getIdDireccion() {
		return idDireccion;
	}


	public void setIdDireccion(String idDireccion) {
		this.idDireccion = idDireccion;
	}


	public String getNombre() {
		return nombre;
	}


	public void setNombre(String nombre) {
		this.nombre = nombre;
	}


	public String getNumero() {
		return numero;
	}


	public void setNumero(String numero) {
		this.numero = numero;
	}
	
	
}
