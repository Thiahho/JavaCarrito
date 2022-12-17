package modelos;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import conexion.Conexion;
import modelos.Clientes;

public class ClientesDAO implements DAO<Clientes> {
	Connection con;
	Conexion cn= new Conexion();
	PreparedStatement ps;
	ResultSet rs;

	
	public void insert (Clientes clientes) throws SQLException{
		
	
		con= cn.Conexion();
		
		String query = "insert into clientes";
		query += " (username, password)";
		query += " values (?,?)";
		
		ps = con.prepareStatement(query);
		
		ps.setString(1, clientes.getUsername());
		ps.setString(2, clientes.getPassword());
		
		ps.executeUpdate();
		
		con.close();

		
	}

	@Override
	public void update(Clientes clientes) throws SQLException {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void delete(int id) throws SQLException {
		// TODO Auto-generated method stub
		
	}
	
	public Clientes getByUsername(String username) throws SQLException{
		Clientes clientes = null;
		
		con=cn.Conexion();
		
		String query = "select id, username, password";
		query += " from clientes";
		query += " where username = ?";
		
		ps = con.prepareStatement(query);
		ps.setString(1,username);
		
		rs= ps.executeQuery();
		
		if(rs.next()) {
			clientes = new Clientes();
			clientes.setId(rs.getInt("id"));
			clientes.setUsername(rs.getString("username"));
			clientes.setPassword(rs.getString("password"));
		}
		
		return clientes;
		
	}

	@Override
	public Clientes getById(int id) throws SQLException {
		
		Clientes clientes = null;
		
		con= cn.Conexion();
		
		String query= "select id, username, password";
		query += " from clientes";
		query += " where id = ?";
		
		ps =con.prepareStatement(query);
		
		ps.setInt(1, id);
		
		rs = ps.executeQuery();
		
		if(rs.next()) {
			clientes = new Clientes();
			clientes.setId(rs.getInt("id"));
			clientes.setUsername(rs.getString("username"));
			clientes.setPassword(rs.getString("password"));
		}
		
		return null;
	}

	@Override
	public List<Clientes> getAll() throws SQLException {
		// TODO Auto-generated method stub
		return null;
	}
	
	public boolean existsUsername(String username) throws SQLException {
		return this.getByUsername(username) != null;
	}

}
