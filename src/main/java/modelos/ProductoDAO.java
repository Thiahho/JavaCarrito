package modelos;

import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;


import conexion.Conexion;
import java.sql.Connection;
import java.sql.PreparedStatement;

public class ProductoDAO {
	Connection con;
	Conexion cn= new Conexion();
	PreparedStatement ps;
	ResultSet rs;
	
	public Producto listarId(int id) {
		String sql="select * from producto where id="+id;
		Producto p= new Producto();
		try {  
			con=cn.Conexion();
			ps=con.prepareStatement(sql);
			rs= ps.executeQuery();
			while(rs.next()) {
				p.setId(rs.getInt(1));
				p.setNameprod(rs.getString(2));
				p.setPrecio(rs.getDouble(3));
			}
		} catch (Exception e) {
			
		}
		return p;
	}
	public List listar() {
		List<Producto>productos = new ArrayList();
		String sql="select * from producto";
		try {
			con= cn.Conexion();
			ps= con.prepareStatement(sql);
			rs = ps.executeQuery();
			while(rs.next()) {
				Producto p= new Producto();
				p.setId(rs.getInt(1));
				p.setNameprod(rs.getString(2));
				p.setPrecio(rs.getDouble(3));
				productos.add(p);
			}
		} catch (Exception e) {
		}
		return productos;
	}
	
	
}
