package modelos;

public class Clientes {
	private int id;
	private String username;
	private String password;

	
	public Clientes(int id, String username, String password) {
		super();
		this.id = id;
		this.username = username;
		this.password = password;
	}
	

	public Clientes() {
		super();
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}
	
	public String getUsername() {
		return username;
	}
	
	public void setUsername(String username) {
		this.username = username;
	}
	
	public String getPassword() {
		return password;
	}
	
	public void setPassword(String password) {
		this.password = password;
	}
	
	public boolean validarClave(String password) {
		return this.getPassword().equals(password);
	}

}
