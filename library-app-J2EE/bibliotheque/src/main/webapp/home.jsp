<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<%
// Vérifier si l'utilisateur est connecté
if (session.getAttribute("user") == null) {
    response.sendRedirect("login.jsp"); // Rediriger vers la page de connexion s'il n'est pas connecté
}
%>
    <meta charset="ISO-8859-1">
    <title>Gestion des livre</title>
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
    
    <style>
     .background-container {
            background-image: url('lol.jpg'); 
            background-size: cover;
            background-position: center;
            height: 100vh; 
            display: flex;
            justify-content: center;
            align-items: center;
            flex-direction: column;
            color: #fff;
            text-align: center;
        }
        h1 {
            font-size: 3em;
            margin-bottom: 20px;
        }
        .ligne-horizontal {
            width: 100%;
            height: 3px;
            background-color: #fff;
            margin-bottom: 20px;
        }
        </style>
 
      
    
</head>

<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
    <div class="container">
        <a class="navbar-brand" href="#">Gestion de livre</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav ml-auto">
             <li class="nav-item">
                </li>
                
                 <li class="nav-item">
                    <a class="nav-link" href="welcome.jsp"><i class="fas fa-home"></i> Bienvenue</a>
                </li>
                <li class="nav-item active">
                    <a class="nav-link" href="ajouter.jsp"><i class="fas fa-user-plus"></i> Ajouter des livres</a>
                </li>
                
                  <li class="nav-item active">
    <a class="nav-link" href="login.jsp"><i class="fas fa-sign-out-alt"></i> Déconnexion</a>
</li>

                 <li class="nav-item active">
                    <a class="nav-link" href="contactez.jsp"><i class="fas fa-envelope"></i> Contactez-nous</a>
                </li>
                 <li class="nav-item active">
                    <a class="nav-link" href="propos.jsp"><i class="fas fa-info-circle"></i> À propos</a>
                </li>
            </ul>
            <form class="form-inline my-2 my-lg-0">
                <input class="form-control mr-sm-2" type="search" placeholder="Rechercher" aria-label="Search">
                <button class="btn btn-outline-light my-2 my-sm-0" type="submit">Rechercher</button>
            </form>
        </div>
    </div>
</nav>
 
<div class="container mt-3">
    <h2>Liste des livres</h2>
     <p><h3>Bienvenue ${user.nom} !</h3></p>
    <table class="table">
        <thead class="thead-dark">
            <tr>
                <th scope="col">ID</th>
                <th scope="col">titre</th>
                <th scope="col">Quantite</th>
                <th scope="col">Actions</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach items="${Liste}" var="et">
                <tr>
                    <td>${et.id}</td>
                    <td>${et.titre}</td>
                    <td>${et.quantite}</td>
                    <td>
                        <!-- Bouton de suppression avec style Bootstrap -->
                     <a href="Delete?id=${et.id}" class="btn btn-danger btn-sm">
                       <i class="fas fa-trash"></i> Supprimer
                     </a>

                    <a href="modifier.jsp?id=${et.id}" class="btn btn-success btn-sm">
                    <i class="fas fa-edit"></i> Modifier
                    </a>



                        
                    </td>
                </tr>
            </c:forEach>
            
        </tbody>
    </table>
      
        
   
 

<div class="background-container">
        <h1>Hafnaoui Arij</h1>
        <div class="ligne-horizontal"></div>
        
<h2>Gestion des livres </h2> 
</div>

 <footer class="footer mt-auto py-3 bg-dark">
    <div class="container">
        <span>© Hafnaoui Arij - 2024 Gestion de livre. Tous droits réservés.</span>
    </div>
</footer>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

</body>
</html>


