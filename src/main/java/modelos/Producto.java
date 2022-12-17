package modelos;

public class Producto {
	int id;
	String nameprod;
	double precio ;
	
	
	public Producto() {
	}


	public Producto(int id, String nameprod, double precio) {
		super();
		this.id = id;
		this.nameprod = nameprod;
		this.precio = precio;
	}


	public int getId() {
		return id;
	}




	public String getNameprod() {
		return nameprod;
	}


	public void setNameprod(String nameprod) {
		this.nameprod = nameprod;
	}


	public double getPrecio() {
		return precio;
	}


	public void setPrecio(double precio) {
		this.precio = precio;
	}


	public void setId(int id) {
		this.id = id;
		
	}
	
	
}
