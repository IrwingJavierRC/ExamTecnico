package prueba.tecnica.dao;

import java.util.List;

import prueba.tecnica.model.Cliente;
import prueba.tecnica.model.Direccion;
import prueba.tecnica.model.Telefono;

public interface ClienteDAO {
	public List<Cliente> getClientes();
	public void addCliente(Cliente o);
	public List<Telefono> getTelefono();
	public List<Direccion> getDireccion();
}
