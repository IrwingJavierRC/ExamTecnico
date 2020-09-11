package prueba.tecnica.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import prueba.tecnica.model.Cliente;
import prueba.tecnica.model.Direccion;
import prueba.tecnica.model.Telefono;
import prueba.tecnica.services.ClienteService;

@Controller
@RequestMapping("/clienteController")
public class ClienteController {
	
	@Autowired
	private ClienteService service;

	@RequestMapping(value = "/getClientes", method = RequestMethod.POST)
	@ResponseBody
	public List<Cliente> getOrganizaciones( HttpServletRequest request) {
		return service.getClientes();
	}
	
	@RequestMapping(value = "/getDireccion", method = RequestMethod.GET)
	@ResponseBody
	public List<Direccion> getDireccion( HttpServletRequest request) {
		return service.getDireccion();
	}
	
	@RequestMapping(value = "/getTelefono", method = RequestMethod.GET)
	@ResponseBody
	public List<Telefono> getTelefono( HttpServletRequest request) {
		return service.getTelefono();
	}
	
	@RequestMapping(value = "/addCliente", method = RequestMethod.POST)
	@ResponseBody
	public String addOrganizacion(String nombre,String direccion,String telefono,String codigo,String idExterno, HttpServletRequest request) {
 
		Cliente cliente = new Cliente();
		Direccion d = new Direccion();
		Telefono t = new Telefono();
		
		cliente.setNombre(nombre);
		
		t.setIdTelefono(telefono);
		d.setIdDireccion(direccion);
		
		cliente.setTelefono(t);
		cliente.setDireccion(d);
		
		cliente.setCodigo(codigo);
		cliente.setIdExterno(idExterno);
		
		try {
			System.out.println(cliente);
			service.addCliente(cliente);
			return "SUCCESS";
		} catch (Exception ex) {
			ex.printStackTrace();
			return ex.getMessage();
		}
	}
}
