package prueba.tecnica.service.Impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import prueba.tecnica.dao.ClienteDAO;
import prueba.tecnica.model.Cliente;
import prueba.tecnica.model.Direccion;
import prueba.tecnica.model.Telefono;
import prueba.tecnica.services.ClienteService;

@Service
public class ClienteServiceImplt implements ClienteService {

	@Autowired
	private ClienteDAO clientenDAO;
	
	@Override
	public List<Cliente> getClientes() {
		
		return clientenDAO.getClientes();
	}
	@Override
	public List<Direccion> getDireccion() {
		
		return clientenDAO.getDireccion();
	}
	@Override
	public List<Telefono> getTelefono() {
		
		return clientenDAO.getTelefono();
	}

	@Override
	public void addCliente(Cliente o) {
		clientenDAO.addCliente(o);
	}
	
}
