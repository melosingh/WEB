package model;

public class Registrazione {

	private String nome;
	private String cognome;

	private String email;
	private String password;
	private String username;
	
	public Registrazione(String nome,String cognome,String email,String password)
	{
		this.cognome=cognome;
		this.nome=nome;
		this.email=email;
		this.password=password;
		
	}

	public String getNome() {
		return nome;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}

	public String getCognome() {
		return cognome;
	}

	public void setCognome(String cognome) {
		this.cognome = cognome;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	
}
