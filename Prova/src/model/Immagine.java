package model;

public class Immagine {

	
	

	@Override
	public String toString() {
		return "Immagine [path=" + path + ", id=" + id + ", quota=" + quota + ", descrizione=" + descrizione + "]";
	}

	private String path;
	private String id;
	private String quota;
	private String nome;
	private String descrizione;
	public Immagine(String id,String path,String descrizione,String quota )
	{
	
		this.descrizione=descrizione;
		this.id=id;
		this.path=path;
		this.quota=quota;
	}
	 
	public String getPath() {
		return path;
	}

	public void setPath(String path) {
		this.path = path;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	
	public String getQuota() {
		return quota;
	}

	public void setQuota(String quota) {
		this.quota = quota;
	}

	

	public String getDescrizione() {
		return descrizione;
	}

	public void setDescrizione(String descrizione) {
		this.descrizione = descrizione;
	}

	public String getNome() {
		return nome;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}
}
