<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Bienvenue</title>
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <%
// V�rifier si l'utilisateur est connect�
if (session.getAttribute("user") == null) {
    response.sendRedirect("login.jsp"); // Rediriger vers la page de connexion s'il n'est pas connect�
}
%>
    <style>
        body {
            background-image: url('lol.jpg');
            background-size: cover;
            color: #fff;
        }
        .background-container {
            height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
            flex-direction: column;
            text-align: center;
        }
        .title {
            font-size: 3em;
            margin-bottom: 20px;
        }
        .separator {
            width: 100%;
            height: 3px;
            background-color: #fff;
            margin-bottom: 20px;
        }
        .subtitle {
            font-size: 1.5em;
            margin-bottom: 20px;
        }
        .link {
            font-size: 1.2em;
        }
    </style>
</head>
<body>
    <div class="background-container">
        <header>
            <h1 class="title">Hafnaoui Arij</h1>
            <div class="separator"></div>
            <h2 class="subtitle">Gestion des livres</h2>
        </header>
        <p class="subtitle">Bienvenue dans notre application de gestion des livres, o� vous pouvez explorer une vaste collection litt�raire avec facilit� et efficacit�.</p>
        <p class="link">Cliquez ici pour acc�der � la <a href="home.jsp">page d'accueil</a></p>
    </div>

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
