package modelos;

public class Carrito {
	int item;
	int id;
	String nameprod;
	Double precio;
	int cantidad;
	double subTotal;
	
	public Carrito() {
	}

	public Carrito(int item, int id, String nameprod, Double precio, int cantidad, double subTotal) {
		super();
		this.item = item;
		this.id = id;
		this.nameprod = nameprod;
		this.precio = precio;
		this.cantidad = cantidad;
		this.subTotal = subTotal;
	}

	public int getItem() {
		return item;
	}

	public void setItem(int item) {
		this.item = item;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getNameprod() {
		return nameprod;
	}

	public void setNameprod(String nameprod) {
		this.nameprod = nameprod;
	}

	public Double getPrecio() {
		return precio;
	}

	public void setPrecio(Double precio) {
		this.precio = precio;
	}

	public int getCantidad() {
		return cantidad;
	}

	public void setCantidad(int cantidad) {
		this.cantidad = cantidad;
	}

	public double getSubTotal() {
		return subTotal;
	}

	public void setSubTotal(double subTotal) {
		this.subTotal = subTotal;
	}
	
	
}
