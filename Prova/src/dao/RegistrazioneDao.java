package dao;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.LinkedList;
import java.util.List;

import model.Registrazione;

public class RegistrazioneDao {
	private DataSource dataSource;
		
	private RegistrazioneDao() {
		try {
			Class.forName("org.postgresql.Driver").newInstance();
			System.out.println("LOCALHOST||||||");
			dataSource=new DataSource("jdbc:postgresql://kandula.db.elephantsql.com:5432/dddbhgfw","dddbhgfw","Ee9fRO8VTPytcUxh6wSL3S8t6oqzqno_");
		} catch (Exception e) {
			System.out.println("MySQLDAOFactory.class: failed to load MySQL JDBC driver\n" + e);
			e.printStackTrace();
		}

	}
	private static RegistrazioneDao instance= null;
	public static RegistrazioneDao getInstance() {
		if (instance==null)
			instance= new RegistrazioneDao();
		return instance;
	}
	public List<String> findAll() {
		return null;
}
	public void add(Registrazione registrazione)
	{
		Connection connection = null;
		
		try {
			connection = this.dataSource.getConnection();
			
			String query = "INSERT INTO UtentiRegistrati (nome,cognome,email,pass) values(?,?,?,?)";
			PreparedStatement statement=connection.prepareStatement(query);
			statement.setString(1,registrazione.getNome());
			statement.setString(2,registrazione.getCognome());
			statement.setString(3,registrazione.getEmail());
			statement.setString(4,registrazione.getPassword());
			//statement.setString(5,registrazione.getUsername());

			
			statement.executeUpdate();
			
		} catch (SQLException e) {
			throw new RuntimeException(e.getMessage());
		} finally {
			try {
				connection.close();
			} catch (SQLException e) {
				throw new RuntimeException(e.getMessage());
			}
		}
		
	}
	}
	
