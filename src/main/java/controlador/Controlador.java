package controlador;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import modelos.Carrito;
import modelos.Producto;
import modelos.ProductoDAO;


@WebServlet("/Controlador")
public class Controlador extends HttpServlet {


	ProductoDAO pdao= new ProductoDAO();
	Producto p=new Producto(); 
	List<Producto> productos;
	
	List<Carrito>listaCarrito= new ArrayList<>();
	int item;
	double totalPagar=0.0;
	int cantidad= 1;
	
	protected void processRequest(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		String accion= request.getParameter("accion");
		
		productos = pdao.listar();
		switch (accion) {
		case "Principal": 
			int idp=Integer.parseInt(request.getParameter("id"));
			p=pdao.listarId(idp);
			item= item+1;
			Carrito car= new Carrito();
			car.setItem(item);
			car.setId(p.getId());
			car.setNameprod(p.getNameprod());
			car.setPrecio(p.getPrecio());
			car.setCantidad(cantidad);
			car.setSubTotal(cantidad*p.getPrecio());
			listaCarrito.add(car);
			request.setAttribute("contador" , listaCarrito.size());
			request.getRequestDispatcher("Controlador?accion=home").forward(request, response);
			
			break;
		
		case "Carrito":
			totalPagar=0.0;
			request.setAttribute("carrito", listaCarrito);
			for (int i = 0; i < listaCarrito.size() ; i++) {
				totalPagar= totalPagar+listaCarrito.get(i).getSubTotal();
			}
			request.setAttribute("totalPagar", totalPagar);
			request.getRequestDispatcher("carrito.jsp").forward(request, response);
		break;
		
		case "Home":
			
		default:
		request.setAttribute("productos", productos);
		request.getRequestDispatcher("index.jsp").forward(request, response);
		}
	
      
	}
    public Controlador() {
        super();
       
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.getRequestDispatcher("index.jsp").forward(request, response);
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		processRequest(request, response);
	}

}
