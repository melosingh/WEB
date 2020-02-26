package dao;

import java.sql.*;

import model.UtenteLoggato;  
  
public class LoginDao  { 
	
	private DataSource dataSource;
	
	private LoginDao() {
		try {
			Class.forName("org.postgresql.Driver").newInstance();
			System.out.println("LOCALHOST||||||");
			dataSource=new DataSource("jdbc:postgresql://kandula.db.elephantsql.com:5432/dddbhgfw","dddbhgfw","Ee9fRO8VTPytcUxh6wSL3S8t6oqzqno_");
		} catch (Exception e) {
			System.out.println("MySQLDAOFactory.class: failed to load MySQL JDBC driver\n" + e);
			e.printStackTrace();
		}

	}
	private static LoginDao instance= null;
	public static LoginDao getInstance() {
		if (instance==null)
			instance= new LoginDao();
		return instance;
	}
public UtenteLoggato getUtente (String email,String pass)
{
	UtenteLoggato u=null;
	Connection connection=null;
	connection = this.dataSource.getConnection();
	try {
		
		System.out.println("entro dentro getUtente");
	String utente="SELECT nome,cognome,email,pass FROM UtentiRegistrati WHERE email=? and pass=?";
	PreparedStatement statement=connection.prepareStatement(utente);

	  statement=connection.prepareStatement(utente);
	  statement.setString(1,email);
	  statement.setString(2, pass);
		ResultSet result = statement.executeQuery();
		  result=statement.executeQuery();
		  if(result.next())
		  {
      System.out.println(result.getString("nome"));
      System.out.println(result.getString("cognome"));
      System.out.println(result.getString("email"));
      System.out.println(result.getString("pass"));
	  
	  u=new UtenteLoggato(result.getString("nome"),result.getString("cognome"),result.getString("email"),result.getString("pass"));
	  return u;
		  }
	}
	catch (Exception e) {
		// TODO: handle exception
	} finally {
		try {
			connection.close();
		} catch (SQLException e2) {
			throw new PersistenceException(e2.getMessage());
		}
	}
	return u;
}
public  boolean validate(String email,String pass){  
	
		
	Connection connection=null;
	connection = this.dataSource.getConnection();
	try {
		
		System.out.println("!entro nel LoginDao");
		String query = "SELECT email,pass FROM UtentiRegistrati WHERE email=? and pass=? ";
		PreparedStatement statement=connection.prepareStatement(query);
		statement.setString(1, email);
		statement.setString(2, pass);
		
		ResultSet result = statement.executeQuery();
		System.out.println("i nome dentro il DATABASE: ");
	 if(result.next())
         { 
		 System.out.println("ho trovato l'utente e ora provo a stamparne i dati da inserire poi ");
		return true;
         }
		
		else
			return false;
	} catch (Exception e) {
		// TODO: handle exception
	} finally {
		try {
			connection.close();
		} catch (SQLException e2) {
			throw new PersistenceException(e2.getMessage());
		}
	}
	
	return false;
   

    }

}