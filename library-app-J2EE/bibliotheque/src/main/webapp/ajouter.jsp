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
    <title>Gestion des livres</title>
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
<body>

<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
    <div class="container">
        <a class="navbar-brand" href="#">Gestion des livres</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav ml-auto">
               <li class="nav-item">
                    <a class="nav-link" href="welcome.jsp"><i class="fas fa-home"></i> Bienvenue</a>
                </li>
                <li class="nav-item active">
                    <a class="nav-link" href="ajouter.jsp"><i class="fas fa-user-plus"></i> Ajouter des livre</a>
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
    <h1 class="animate__animated animate__fadeInDown mb-4 text-primary">Ajouter un livre</h1>
    <form method='POST' action='Add' class="animate__animated animate__fadeInUp">
       <div class="container d-flex justify-content-center align-items-center">
    <form action="LoginServlet" method="post">
        <label for="login">Login:</label>
        <input type="text" id="login" name="login" required><br><br>
        <label for="password">Mot de passe:</label>
        <input type="password" id="password" name="password" required><br><br>
        <input type="submit" value="Se connecter">
    </form>
</div>

    </form>
</div>

<hr>

<div class="background-container">
    <h1>Hafnaoui Arij</h1>
    <div class="ligne-horizontal"></div>
    <h2>Gestion des livres </h2>
</div>

<footer class="bg-dark text-white p-3 mt-5">
    <div class="container">
        <p>&copy; Hafnaoui Arij -2024 Gestion des livres</p>
    </div>
</footer>

<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

</body>
</html>
