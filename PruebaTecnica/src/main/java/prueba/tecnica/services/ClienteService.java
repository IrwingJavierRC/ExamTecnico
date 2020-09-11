package prueba.tecnica.services;

import java.util.List;

import prueba.tecnica.model.Cliente;
import prueba.tecnica.model.Direccion;
import prueba.tecnica.model.Telefono;

public interface ClienteService {
	public List<Cliente> getClientes();
	public List<Direccion> getDireccion();
	public List<Telefono> getTelefono();
	public void addCliente(Cliente o);	
}
