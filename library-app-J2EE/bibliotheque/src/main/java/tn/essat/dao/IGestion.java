package tn.essat.dao;

import java.util.List;

import javax.servlet.http.HttpSession;

import tn.essat.model.Livvre;
import tn.essat.model.AppUser;

public interface IGestion {
    // Méthodes pour les livres
    public List<Livvre> getALLLivre();
    public void addLivre(Livvre lv);
    public void deleteLivre(int id);
    public void modifierLivre(Livvre lv);

    // Méthodes pour les utilisateurs
    public boolean registerUser(AppUser user);
    public AppUser validateUser(String login, String password);
    public AppUser getUserByLogin(String login);
	public void deconnexion(HttpSession session);
}
