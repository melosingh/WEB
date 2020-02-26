package dao;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.LinkedList;
import java.util.List;

import model.Immagine;
import model.Registrazione;

public class ImmagineDao {
	private DataSource dataSource;
		
	private ImmagineDao() {
		try {
			Class.forName("org.postgresql.Driver").newInstance();
			System.out.println("LOCALHOST||||||");
			dataSource=new DataSource("jdbc:postgresql://kandula.db.elephantsql.com:5432/dddbhgfw","dddbhgfw","Ee9fRO8VTPytcUxh6wSL3S8t6oqzqno_");
		} catch (Exception e) {
			System.out.println("MySQLDAOFactory.class: failed to load MySQL JDBC driver\n" + e);
			e.printStackTrace();
		}

	}
	
	private static ImmagineDao instance= null;
	public static ImmagineDao getInstance() {
		if (instance==null)
			instance= new ImmagineDao();
		return instance;
	}
	public List<String> findAll() {
		return null;
}
	public boolean caricaMultiple(Immagine img)
	{

		Connection connection = null;
		
		try {
			connection = this.dataSource.getConnection();
			
			String query = "INSERT INTO multiplepath (id,path,descrizione,quota) values(?,?,?,?)";
			PreparedStatement statement=connection.prepareStatement(query);
			int i = Integer.parseInt(img.getId());
			System.out.println(i);
			int q = Integer.parseInt(img.getQuota());
			System.out.println(q);
			statement.setInt(1,i);
			statement.setString(2,img.getPath());
			statement.setString(3,img.getDescrizione());
			statement.setInt(4,q);
			

			
			statement.executeUpdate();
			return true;
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
	public boolean caricaMarcatori(Immagine img)
	{

		Connection connection = null;
		
		try {
			connection = this.dataSource.getConnection();
			
			String query = "INSERT INTO marcatori (id,path,descrizione,quota) values(?,?,?,?)";
			PreparedStatement statement=connection.prepareStatement(query);
			int i = Integer.parseInt(img.getId());
			System.out.println(i);
			int q = Integer.parseInt(img.getQuota());
			System.out.println(q);
			statement.setInt(1,i);
			statement.setString(2,img.getPath());
			statement.setString(3,img.getDescrizione());
			statement.setInt(4,q);
			

			
			statement.executeUpdate();
			return true;
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
	public boolean caricaListoni(Immagine img)
	{

		Connection connection = null;
		
		try {
			connection = this.dataSource.getConnection();
			
			String query = "INSERT INTO listoni (id,path,descrizione,quota) values(?,?,?,?)";
			PreparedStatement statement=connection.prepareStatement(query);
			int i = Integer.parseInt(img.getId());
			System.out.println(i);
			int q = Integer.parseInt(img.getQuota());
			System.out.println(q);
			statement.setInt(1,i);
			statement.setString(2,img.getPath());
			statement.setString(3,img.getDescrizione());
			statement.setInt(4,q);
			

			
			statement.executeUpdate();
			return true;
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
	public Immagine getUltimoStakeAlto()
	{
		Connection connection = null;
		Immagine img=null;
		System.out.println("arrivo nel ultimo stake alto");
		try {
			
			
			connection = this.dataSource.getConnection();
			
			PreparedStatement statement;
			String query = "SELECT * FROM stakealto where id IN(select max(id) from stakealto ) ";
			statement = connection.prepareStatement(query);
			 
			ResultSet result = statement.executeQuery();
		      if (result.next()) {
			  img=new Immagine(result.getString("id"),result.getString("path"),result.getString("descrizione"),result.getString("quota"));
			}
		} catch (SQLException e) {
			throw new PersistenceException(e.getMessage());
		} finally {
			try {
				connection.close();
			} catch (SQLException e) {
				throw new PersistenceException(e.getMessage());
			}
		}
	
		
		return img;
	}
	public Immagine getUltimoStakeMedio()
	{
		Connection connection = null;
		Immagine img=null;
		System.out.println("arrivo nel ultimo stake medio");
		try {
			
			
			connection = this.dataSource.getConnection();
			
			PreparedStatement statement;
			String query = "SELECT * FROM stakemedio where id IN(select max(id) from stakemedio ) ";
			statement = connection.prepareStatement(query);
			 
			ResultSet result = statement.executeQuery();
		      if (result.next()) {
			  img=new Immagine(result.getString("id"),result.getString("path"),result.getString("descrizione"),result.getString("quota"));
			}
		} catch (SQLException e) {
			throw new PersistenceException(e.getMessage());
		} finally {
			try {
				connection.close();
			} catch (SQLException e) {
				throw new PersistenceException(e.getMessage());
			}
		}
	
		
		return img;
	}
	public Immagine getUltimoStakeBasso()
	{
		Connection connection = null;
		Immagine img=null;
		System.out.println("arrivo nel ultimo stake basso");
		try {
			
			
			connection = this.dataSource.getConnection();
			
			PreparedStatement statement;
			String query = "SELECT * FROM stakebasso where id IN(select max(id) from stakebasso ) ";
			statement = connection.prepareStatement(query);
			 
			ResultSet result = statement.executeQuery();
		      if (result.next()) {
			  img=new Immagine(result.getString("id"),result.getString("path"),result.getString("descrizione"),result.getString("quota"));
			}
		} catch (SQLException e) {
			throw new PersistenceException(e.getMessage());
		} finally {
			try {
				connection.close();
			} catch (SQLException e) {
				throw new PersistenceException(e.getMessage());
			}
		}
	
		
		return img;
	}
	public ArrayList<Immagine> trovaMultipleChampions()
	{
		ArrayList<Immagine> immagini=new ArrayList();
		
		Connection connection = null;
		Immagine img=null;
		System.out.println("arrivo");
		try {
			
			
			connection = this.dataSource.getConnection();
			
			PreparedStatement statement;
			String query = "select * from MultiplePath where descrizione=? ";
			statement = connection.prepareStatement(query);
			 statement.setString(1,"champions");
			ResultSet result = statement.executeQuery();
			while (result.next()) {
				System.out.println(result.getInt("id"));
				System.out.println(result.getString("quota"));
				System.out.println(result.getString("path"));
				System.out.println(result.getString("descrizione"));
	            System.out.println("questo sopra era nel dao");
	           
				immagini.add(new Immagine(result.getString("id"),result.getString("path"),result.getString("descrizione"),result.getString("quota")));
			}
		} catch (SQLException e) {
			throw new PersistenceException(e.getMessage());
		} finally {
			try {
				connection.close();
			} catch (SQLException e) {
				throw new PersistenceException(e.getMessage());
			}
		}
	
		
		return immagini;
	}
	public ArrayList<Immagine> trovaMultipleCampionati()

	{
		ArrayList<Immagine> immagini=new ArrayList();
		
		{Connection connection = null;
		Immagine img=null;
		System.out.println("arrivo");
		try {
			
			
			connection = this.dataSource.getConnection();
			
			PreparedStatement statement;
			String query = "select * from MultiplePath where descrizione=? ";
			statement = connection.prepareStatement(query);
			 statement.setString(1,"campionati");
			ResultSet result = statement.executeQuery();
			while (result.next()) {
				System.out.println(result.getInt("id"));
				System.out.println(result.getString("quota"));
				System.out.println(result.getString("path"));
				System.out.println(result.getString("descrizione"));
	            System.out.println("questo sopra era nel dao");
	           
				immagini.add(new Immagine(result.getString("id"),result.getString("path"),result.getString("descrizione"),result.getString("quota")));
			}
		} catch (SQLException e) {
			throw new PersistenceException(e.getMessage());
		} finally {
			try {
				connection.close();
			} catch (SQLException e) {
				throw new PersistenceException(e.getMessage());
			}
		}
	
		}
		return immagini;
	}
	public Immagine getUltimaMultiple( )
	{Connection connection = null;
	Immagine img=null;
	System.out.println("arrivo");
	try {
		
		System.out.println("1");
		connection = this.dataSource.getConnection();
		System.out.println("2");
		PreparedStatement statement;
		String query = "select * from Multiple where id IN(select max(id) from Multiple)";
		statement = connection.prepareStatement(query);
		ResultSet result = statement.executeQuery();
		if (result.next()) {
			System.out.println(result.getInt("id"));
			System.out.println(result.getString("nome"));
			System.out.println(result.getString("path"));
			System.out.println(result.getString("descrizione"));
             img=new Immagine(result.getString("id"),result.getString("nome"),result.getString("path"),result.getString("descrizione"));
		}
	} catch (SQLException e) {
		throw new PersistenceException(e.getMessage());
	} finally {
		try {
			connection.close();
		} catch (SQLException e) {
			throw new PersistenceException(e.getMessage());
		}
	}
	return img;
	}
	public ArrayList<Immagine> trovaMultiple()
	{
		ArrayList<Immagine> immagini=new ArrayList();
		
		{Connection connection = null;
		Immagine img=null;
		
		try {
			
			
			connection = this.dataSource.getConnection();
			
			PreparedStatement statement;
			String query = "select * from multiplepath   ";
			statement = connection.prepareStatement(query);
			
			ResultSet result = statement.executeQuery();
			while (result.next()) {
				
	       immagini.add(new Immagine(result.getString("id"),result.getString("path"),result.getString("descrizione"),result.getString("quota")));
			}
		} catch (SQLException e) {
			throw new PersistenceException(e.getMessage());
		} finally {
			try {
				connection.close();
			} catch (SQLException e) {
				throw new PersistenceException(e.getMessage());
			}
		}
	
		}
		return immagini;
	}
	
	public ArrayList<Immagine> trovaMarcatori()
	{
		ArrayList<Immagine> immagini=new ArrayList();
		
		{Connection connection = null;
		Immagine img=null;
		System.out.println("arrivo");
		try {
			
			
			connection = this.dataSource.getConnection();
			
			PreparedStatement statement;
			String query = "select * from marcatori   ";
			statement = connection.prepareStatement(query);
			
			ResultSet result = statement.executeQuery();
			while (result.next()) {
				System.out.println(result.getString("path"));
	           
				immagini.add(new Immagine(result.getString("id"),result.getString("path"),result.getString("descrizione"),result.getString("quota")));
			}
		} catch (SQLException e) {
			throw new PersistenceException(e.getMessage());
		} finally {
			try {
				connection.close();
			} catch (SQLException e) {
				throw new PersistenceException(e.getMessage());
			}
		}
	
		}
		return immagini;
	}
	public ArrayList<Immagine> trovaListoni()

	{
		ArrayList<Immagine> immagini=new ArrayList();
		
		{Connection connection = null;
		Immagine img=null;
		System.out.println("arrivo");
		try {
			
			
			connection = this.dataSource.getConnection();
			
			PreparedStatement statement;
			String query = "select * from listoni   ";
			statement = connection.prepareStatement(query);
			
			ResultSet result = statement.executeQuery();
			while (result.next()) {
				System.out.println(result.getString("path"));
	           
				immagini.add(new Immagine(result.getString("id"),result.getString("path"),result.getString("descrizione"),result.getString("quota")));
			}
		} catch (SQLException e) {
			throw new PersistenceException(e.getMessage());
		} finally {
			try {
				connection.close();
			} catch (SQLException e) {
				throw new PersistenceException(e.getMessage());
			}
		}
	
		}
		return immagini;
	}
}