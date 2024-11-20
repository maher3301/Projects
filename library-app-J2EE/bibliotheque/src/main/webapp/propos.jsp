<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
    <title>Gestion des livres</title>
    <style>
        .card {
            border: none; 
            border-radius: 15px; 
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1); 
            transition: transform 0.3s ease, box-shadow 0.3s ease; 
        }
        .card:hover {
            transform: translateY(-5px); 
            box-shadow: 0 8px 16px rgba(0, 0, 0, 0.2); 
        }
        .card-body {
            padding: 20px; 
        }
        .card-title {
            font-weight: bold; 
            margin-bottom: 10px;
        }
        .card-icon {
            font-size: 2em; 
            margin-bottom: 10px; 
        }

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

        .grand-container {
            padding: 20px;
            background-color: white;
            color: #fff;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);
            border-radius: 10px; /* Correction du style */
            transition: transform 0.3s ease-in-out;
        }
        .grand-container:hover {
            transform: scale(1.05);
        }
        .petite-container {
            background-color: #fff;
            color: #007bff;
            padding: 10px;
            border-radius: 8px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }
        .petite-container:hover {
            background-color: #f0f0f0;
        }
        /* Ajout de l'animation */
        @keyframes bouger {
          0% { transform: scale(1); }
          50% { transform: scale(1.1); }
          100% { transform: scale(1); }
        }
        .petite-container.clicked {
          animation: bouger 0.5s ease;
        }
    </style>
</head>
<body>
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
        <div class="container">
            <a class="navbar-brand" href="#">Gestion des livres</a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav"
                aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav ml-auto">
                    <li class="nav-item">
                        <a class="nav-link" href="home.jsp"><i class="fas fa-home"></i> Accueil</a>
                    </li>
                    <li class="nav-item active">
                        <a class="nav-link" href="ajouter.jsp"><i class="fas fa-user-plus"></i> Ajouter des étudiants</a>
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
    
    <div class="container mt-5 grand-container">
        <div class="row justify-content-center">
            <div class="card-deck"> <!-- Utilisation de card-deck pour afficher les cartes dans une grille -->
                <div class="card mb-3 petite-container" data-toggle="modal" data-target="#paragraphModal1">
                    <div class="card-body">
                        <i class="fas fa-users"></i>
                        <h5 class="card-title">À propos de nous</h5>
                    </div>
                </div>
                <div class="card mb-3 petite-container" data-toggle="modal" data-target="#paragraphModal2">
                    <div class="card-body">
                        <i class="fas fa-bullseye"></i>
                        <h5 class="card-title">Notre mission</h5>
                    </div>
                </div>
                <div class="card mb-3 petite-container" data-toggle="modal" data-target="#paragraphModal3">
                    <div class="card-body">
                        <i class="fas fa-users"></i>
                        <h5 class="card-title">Notre équipe</h5>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="modal fade" id="paragraphModal1" tabindex="-1" role="dialog" aria-labelledby="paragraphModalLabel1"
        aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="paragraphModalLabel1">Gestion des livres</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                   <p>Notre application de gestion de livres offre une solution complète pour les bibliothèques
                    Les librairies ou toute organisation qui gère une collection de livres.
                     Avec une interface conviviale et des fonctionnalités robustes
                     notre application simplifie la gestion des livres, des emprunts, des retours et bien plus encore.</p>
                </div>
            </div>
        </div>
    </div>

    <div class="modal fade" id="paragraphModal2" tabindex="-1" role="dialog" aria-labelledby="paragraphModalLabel2"
        aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="paragraphModalLabel2">Support et formation </h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
<p>Nous offrons un support technique complet et une formation aux utilisateurs pour garantir une adoption réussie de l'application.</p>
 Notre équipe est disponible pour répondre aux questions, résoudre les problèmes et fournir des conseils sur l'utilisation optimale de l'application.  </p>              </div>
            </div>
        </div>
    </div>

    <div class="modal fade" id="paragraphModal3" tabindex="-1" role="dialog" aria-labelledby="paragraphModalLabel3"
        aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="paragraphModalLabel3">Gestion des livres</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    Notre équipe est composée de développeurs talentueux et d'experts .
                </div>
            </div>
        </div>
    </div>
       <hr>
   
    <div class="container mt-3">
        <div class="row">
          
             <div class="col-md-4 mb-4">
                <div class="card">
                    <img src="R.jpg" class="card-img-top" alt="Image">
                    <div class="card-body">
                         <h5 class="card-title">Système de prêt automatisé</h5>
                        <p class="card-text">Grâce à notre système de prêt automatisé, les utilisateurs peuvent effectuer des emprunts et des retours de livres en libre-service à l'aide de bornes dédiées ou de l'application mobile. </p>
                        <button type="button" class="btn btn-warning"> <i class="fas fa-angle-double-right ml-2"></i>Voir plus</button>
                    </div>
                </div>
            </div>
             <div class="col-md-4 mb-4">
                <div class="card">
                    <img src="fofo.png" class="card-img-top" alt="Image">
                    <div class="card-body">
                       <h5 class="card-title">Gestion des stocks</h5>
                        <p class="card-text">Les bibliothécaires ou les gestionnaires peuvent facilement gérer le stock de livres, en ajoutant de nouveaux livres</p>
                        <button type="button" class="btn btn-warning"> <i class="fas fa-angle-double-right ml-2"></i>Voir plus</button>
                    </div>
                </div>
            </div>
             <div class="col-md-4 mb-4">
                <div class="card">
                    <img src="fifi.png" class="card-img-top" alt="Image">
                    <div class="card-body">
                         <h5 class="card-title">Fonctionnalités principales</h5>
                        <p class="card-text"> L'application permet aux utilisateurs de rechercher facilement des livres par titre, auteur, catégorie ou tout autre critère pertinent.</p>
                        <button type="button" class="btn btn-warning"> <i class="fas fa-angle-double-right ml-2"></i>Voir plus</button>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <hr>

    
    <div class="background-container">
        <h1>Hafnaoui Arij</h1>
        <div class="ligne-horizontal"></div>
        <h2>Gestion des livres </h2>
    </div>

    <footer class="bg-dark text-white p-3 mt-5">
        <div class="container">
            <p>&copy; Hafnaoui Arij - 2024 Gestion des livres</p>
        </div>
    </footer>

    <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    <!-- Ajout de JavaScript pour l'animation -->
    <script>
        $(document).ready(function() {
            $(".petite-container").click(function() {
                $(this).addClass("clicked");
                setTimeout(function() {
                    $(".petite-container").removeClass("clicked");
                }, 500);
            });
        });
    </script>
</body>
</html>
