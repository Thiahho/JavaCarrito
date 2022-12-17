package controlador;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import modelos.Empleados;
import modelos.EmpleadosDAO;


@WebServlet("/Validar")
public class Validar extends HttpServlet {
	private static final long serialVersionUID = 1L;
      
	EmpleadosDAO edao = new EmpleadosDAO();
	Empleados empleados= new Empleados();
	
	protected void processRequest(HttpServletRequest request, HttpServletResponse response)throws ServletException,  IOException {
		response.setContentType("text/html;charset=UTF-8");
	}
    public Validar() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
		String accion= request.getParameter("accion");
		if(accion.equalsIgnoreCase("Ingresar")) {
			String user=request.getParameter("txtUser");
			String pass=request.getParameter("txtPass");
			empleados= edao.Validar(user, pass);
			if(empleados.getUsername()!=null) {
				request.getRequestDispatcher("ControladorEmpleados?accion=Principal").forward(request, response);
			}else {
				request.getRequestDispatcher("Login.jsp").forward(request, response);  
			}
		}
	
	}

}
