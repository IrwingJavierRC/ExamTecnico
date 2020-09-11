package prueba.tecnica.dao.Impl;

import java.io.UnsupportedEncodingException;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Base64;
import java.util.List;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.jdbc.core.support.JdbcDaoSupport;
import org.springframework.stereotype.Repository;

import prueba.tecnica.dao.ClienteDAO;
import prueba.tecnica.model.Cliente;
import prueba.tecnica.model.Direccion;
import prueba.tecnica.model.Telefono;
import prueba.tecnica.util.DAOUtil;

@Repository
public class ClienteDAOImpl extends JdbcDaoSupport implements ClienteDAO {

	@Autowired
	private DAOUtil daoUtil;
	
	@Autowired
	public ClienteDAOImpl(DataSource dataSource) {
		this.setDataSource(dataSource);
	}
	
	private static final String GET_CLIENTES = "SELECT * FROM cliente";
	
	@Override
	public List<Cliente> getClientes() {
		try {
			return this.getJdbcTemplate().query(GET_CLIENTES , new ClienteMapper());
		} catch (Exception ex) {
			System.out.println("Error al consultar Organizaciones: "+ ex);
			return null;
		}
		
	}
	
	private class ClienteMapper implements RowMapper<Cliente> {

		@Override
		public Cliente mapRow(ResultSet rs, int rowNum) throws SQLException {
			Cliente cliente = new Cliente();
			Telefono tel = new Telefono();
			Direccion dir = new Direccion();
			
			cliente.setIdExterno(rs.getString("IDEXTERNO"));
			cliente.setNombre(rs.getString("NOMBRE"));
//			cliente.setDireccion(rs.getString("DIRECCION"));
			try {
				cliente.setCodigo(desencriptar(rs.getString("CODIGO")));
			} catch (UnsupportedEncodingException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
			tel.setIdTelefono(rs.getString("IDTELEFONO"));
			cliente.setTelefono(tel);
			
			dir.setIdDireccion(rs.getString("IDDIRECCION"));
			cliente.setDireccion(dir);
			
			return cliente;

		}
	}
	
			
	private static final String ADD_CLIENTE= "INSERT INTO cliente " 
			+ "( "
			+ "NOMBRE, " 
			+ "IDDIRECCION, " 
			+ "IDTELEFONO,"
			+ "IDEXTERNO,"
			+ "CODIGO) " 			
			+ "VALUES (?,?,?,?,?)";
	
	
	@Override
	public void addCliente(Cliente o) {
		try {
			this.getJdbcTemplate().update(ADD_CLIENTE,
					o.getNombre(),
					o.getDireccion().getIdDireccion(),
					o.getTelefono().getIdTelefono(),
					o.getIdExterno(),
					encriptar(o.getCodigo()));
		} catch (Exception ex) {
			ex.printStackTrace();
			System.out.println("Error al insertar Clientes: "+ ex);

		}
	}
	
	 private static String encriptar(String s) throws UnsupportedEncodingException{
	        return Base64.getEncoder().encodeToString(s.getBytes("utf-8"));
    }
    
    private static String desencriptar(String s) throws UnsupportedEncodingException{
        byte[] decode = Base64.getDecoder().decode(s.getBytes());
        return new String(decode, "utf-8");
    }
    
    public static final String GET_TELEFONOS = "SELECT * FROM telefono";

	@Override
	public List<Telefono> getTelefono() {
		try {
			return this.getJdbcTemplate().query(GET_TELEFONOS , new TelefonoMapper());
		} catch (Exception ex) {
			System.out.println("Error al consultar Telefonos: "+ ex);
			return null;
		}
	}
	
	
	
	public static final String GET_DIRECCIONES = "SELECT * FROM direccion";

	@Override
	public List<Direccion> getDireccion() {
		try {
			return this.getJdbcTemplate().query(GET_DIRECCIONES , new DireccionMapper());
		} catch (Exception ex) {
			System.out.println("Error al consultar Telefonos: "+ ex);
			return null;
		}
	}

	private class TelefonoMapper implements RowMapper<Telefono> {

		@Override
		public Telefono mapRow(ResultSet rs, int rowNum) throws SQLException {
			Telefono tel = new Telefono();
			
			tel.setNumero(rs.getString("LADA")+" "+rs.getString("NUMERO"));
			tel.setIdTelefono(rs.getString("IDTELEFONO"));
			return tel;

		}
	}
	
	private class DireccionMapper implements RowMapper<Direccion> {

		@Override
		public Direccion mapRow(ResultSet rs, int rowNum) throws SQLException {
			Direccion dir = new Direccion();
			
			dir.setIdDireccion(rs.getString("IDDIRECCION"));
			dir.setNombre(rs.getString("NOMBRE"));
			return dir;

		}
	}
}
