package tn.essat.model;

public class Livvre {
	private int id;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getTitre() {
		return titre;
	}
	public void setTitre(String titre) {
		this.titre = titre;
	}
	public int getQuantite() {
		return quantite;
	}
	public void setQuantite(int quantite) {
		this.quantite = quantite;
	}
	public Livvre(int id, String titre, int quantite) {
		super();
		this.id = id;
		this.titre = titre;
		this.quantite = quantite;
	}
	public Livvre() {
		super();
		// TODO Auto-generated constructor stub
	}
	private String titre;
	private int quantite;

}
