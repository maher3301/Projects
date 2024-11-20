package tn.essat.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import tn.essat.model.Livvre;
import tn.essat.model.AppUser;

public class GestionIMP implements IGestion {
    private Connection cnx;

    public GestionIMP() {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            this.cnx = DriverManager.getConnection("jdbc:mysql://localhost:3306/biblio", "root", "");
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override
    public List<Livvre> getALLLivre() {
        List<Livvre> etds = new ArrayList<Livvre>();
        try {
            PreparedStatement pre = this.cnx.prepareStatement("select * from livre");
            ResultSet res = pre.executeQuery();
            while (res.next()) {
                int id = res.getInt("id");
                String titre = res.getString("titre");
                int quantite = res.getInt("quantite");
                Livvre et = new Livvre(id, titre, quantite);
                etds.add(et);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return etds;
    }

    @Override
    public void addLivre(Livvre lv) {
        try {
            PreparedStatement pre = this.cnx.prepareStatement("insert into livre values (null,?,?)");
            pre.setString(1, lv.getTitre());
            pre.setInt(2, lv.getQuantite());
            pre.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override
    public void deleteLivre(int id) {
        try {
            PreparedStatement pre = this.cnx.prepareStatement("delete from livre where id=?");
            pre.setInt(1, id);
            pre.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override
    public void modifierLivre(Livvre lv) {
        try {
            PreparedStatement pre = this.cnx.prepareStatement("UPDATE livre SET titre=?, quantite=? WHERE id=?");
            pre.setString(1, lv.getTitre());
            pre.setInt(2, lv.getQuantite());
            pre.setInt(3, lv.getId());
            pre.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    // Implémentation des méthodes pour les utilisateurs

    @Override
    public boolean registerUser(AppUser user) {
        boolean result = false;
        try {
            PreparedStatement pre = this.cnx.prepareStatement("INSERT INTO user (nom, prenom, login, password) VALUES (?, ?, ?, ?);");
            pre.setString(1, user.getNom());
            pre.setString(2, user.getPrenom());
            pre.setString(3, user.getLogin());
            pre.setString(4, user.getPassword());
            result = pre.executeUpdate() > 0;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return result;
    }

    @Override
    public AppUser validateUser(String login, String password) {
        AppUser user = null;
        try {
            PreparedStatement pre = this.cnx.prepareStatement("SELECT id, nom, prenom, login FROM user WHERE login = ? AND password = ?;");
            pre.setString(1, login);
            pre.setString(2, password);
            ResultSet rs = pre.executeQuery();
            if (rs.next()) {
                user = new AppUser(rs.getInt("id"), rs.getString("nom"), rs.getString("prenom"), rs.getString("login"), password);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return user;
    }

    @Override
    public AppUser getUserByLogin(String login) {
        AppUser user = null;
        try {
            PreparedStatement pre = this.cnx.prepareStatement("SELECT id, nom, prenom, login, password FROM user WHERE login = ?;");
            pre.setString(1, login);
            ResultSet rs = pre.executeQuery();
            if (rs.next()) {
                user = new AppUser(rs.getInt("id"), rs.getString("nom"), rs.getString("prenom"), rs.getString("login"), rs.getString("password"));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return user;
    }
    public void deconnexion(HttpSession session) {
        session.invalidate(); // Invalide la session de l'utilisateur
    }
}
