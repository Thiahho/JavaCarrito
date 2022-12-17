package modelos;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import conexion.Conexion;
import modelos.Empleados;


public class EmpleadosDAO implements DAO<Empleados> {
	Conexion cn= new Conexion();
	Connection con;
	PreparedStatement ps;
	ResultSet rs;
	
	public Empleados Validar(String username, String password) {
		Empleados empleados= new Empleados();
		String sql="select * from Empleados where username=? and password=?";
		try {
			con= cn.Conexion();
			ps=con.prepareStatement(sql);
	 		ps.setString(1, username);
	 		ps.setString(2, password);
	 		rs=ps.executeQuery();
	 		while(rs.next()) {
	 			empleados.setId(rs.getInt("id"));
	 			empleados.setUsername(rs.getString("username"));
	 			empleados.setPassword(rs.getString("password"));
	 		}
		} catch (Exception e) {
			
		}
		return empleados;
	}

	@Override
	public void update(Empleados empleados) throws SQLException {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void delete(int id) throws SQLException {
		// TODO Auto-generated method stub
		
	}
	
	

		@Override
	public List<Empleados> getAll() throws SQLException {
		// TODO Auto-generated method stub
		return null;
	}


		@Override
		public void insert(Empleados modelo) throws SQLException {
			// TODO Auto-generated method stub
			
		}


		@Override
		public Empleados getById(int id) throws SQLException {
			// TODO Auto-generated method stub
			return null;
		}



	

}
