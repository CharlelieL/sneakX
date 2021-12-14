<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Inscription</title>
</head>
<body>
    <h1>S'inscrire</h1>
    <form action="" method="post">
        <input id="Login" type="text" name="Login" placeholder="Login"><br><br>
        <input id="Mdp" type="text" name="Mdp" placeholder="Mot de passe"><br><br>
        <input id="MdpConf" type="text" name="MdpConf" placeholder="Mot de passe confirmation"><br><br>
        <input id="Nom" type="text" name="Nom" placeholder="Nom"><br><br>
        <input id="Prenom" type="text" name="Prenom" placeholder="Prenom"><br><br>
        <input type="button" value="Valider">
        <p>Deja un compte ? <a href="..\vue\vConnexion.php" >Connecte-toi !</a></p>
        
    </form>
    <form action="..\vue\vBase.php">
        <button type="submit">Acceuil</button>
    </form>

</body>
</html>