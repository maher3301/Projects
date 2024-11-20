<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
  <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
<meta charset="ISO-8859-1">
<title>contactez</title>
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
        <a class="navbar-brand" href="#">Gestion des livres</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav ml-auto">
               <li class="nav-item">
                    <a class="nav-link" href="home.jsp"><i class="fas fa-home"></i> Accueil</a>
                </li>
                <li class="nav-item active">
                    <a class="nav-link" href="ajouter.jsp"><i class="fas fa-user-plus"></i> Ajouter des livres</a>
                </li>
                 <li class="nav-item active">
                    <a class="nav-link" href="contactez.jsp"><i class="fas fa-envelope"></i> Contactez-nous</a>
                </li>
                 <li class="nav-item active">
                    <a class="nav-link" href="propos.jsp"><i class="fas fa-info-circle"></i> À propos</a>
                </li>
            </ul>
        </div>
    </div>
</nav>
<div class="container mt-5">
        <h1 class=" text-primary">Contactez-nous</h1>
        <form action="#" method="POST">
            <div class="form-group">
                <label for="name">Nom :</label>
                <input type="text" class="form-control" id="name" name="name" required>
            </div>
            <div class="form-group">
                <label for="email">Email :</label>
                <input type="email" class="form-control" id="email" name="email" required>
            </div>
            <div class="form-group">
                <label for="subject">Sujet :</label>
                <input type="text" class="form-control" id="subject" name="subject" required>
            </div>
            <div class="form-group">
                <label for="message">Message :</label>
                <textarea class="form-control" id="message" name="message" rows="5" required></textarea>
            </div>
            <button type="submit" class="btn btn-primary">Envoyer</button>
        </form>
    </div>

<body>
 <hr>
 <div class="background-container">
        <h1>Hafnaoui Arij</h1>
        <div class="ligne-horizontal"></div>
<h2>Gestion des livres </h2>    </div>
<footer class="bg-dark text-white p-3 mt-5">
    <div class="container">
        <p>&copy; Hafnaoui Arij -2024 Gestion des livres</p>
    </div>
</footer>

<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

</body>
</html>