package prueba.tecnica.model;

public class Cliente {

	private String nombre;
	private Direccion direccion;
	private Telefono telefono;
	private String codigo;
	private String idExterno;
	
	
	public Cliente() {
		
	}
	
	
	public Cliente(String nombre, Direccion direccion, Telefono telefono, String codigo, String idExterno) {
		super();
		this.nombre = nombre;
		this.direccion = direccion;
		this.telefono = telefono;
		this.codigo = codigo;
		this.idExterno = idExterno;
	}
	public String getNombre() {
		return nombre;
	}
	public void setNombre(String nombre) {
		this.nombre = nombre;
	}
	public Direccion getDireccion() {
		return direccion;
	}
	public void setDireccion(Direccion direccion) {
		this.direccion = direccion;
	}
	public Telefono getTelefono() {
		return telefono;
	}
	public void setTelefono(Telefono telefono) {
		this.telefono = telefono;
	}
	public String getCodigo() {
		return codigo;
	}
	public void setCodigo(String codigo) {
		this.codigo = codigo;
	}
	public String getIdExterno() {
		return idExterno;
	}
	public void setIdExterno(String idExterno) {
		this.idExterno = idExterno;
	}
	@Override
	public String toString() {
		return "Cliente [nombre=" + nombre + ", direccion=" + direccion + ", telefono=" + telefono + ", codigo="
				+ codigo + ", idExterno=" + idExterno + "]";
	}
	
	
}
