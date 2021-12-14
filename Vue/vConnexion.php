<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Connexion</title>
</head>
<body>
    <h1>Se connecter</h1>
    
    <form action="" method="post">
        <input id="Login" type="text" name="Login" placeholder="Login"><br><br>
        
        <input id="Mdp" type="text" name="Mdp" placeholder="Mot de passe">
        
        <p>Pas de compte ? <a href="..\vue\vInscription.php" >Inscrit-toi !</a></p>   
    </form>
    	<?php
    	if(isset($_GET['Login']))
    	{    
    	$login=$_POST['Login'];
    	}
        ?>
        <?php 
        
        if(isset($_GET['Mdp']))
    	{    
    	$mdp=$_POST['Mdp'];
    	}
        ?>
    <form action="..\vue\vBase.php">
        <button type="submit">Acceuil</button>
    </form>
    

</body>
</html>