<title>Connexion</title>

<link rel="stylesheet" href="..\css\cssCCI.css">
<link rel="stylesheet" href="..\css\cssHeader.css">
<link rel="stylesheet" href="..\css\cssFooter.css">

<?php include_once "vHeader.php" ?>
    <div class="formulaire">
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
    </div>

</body>
<?php include_once "vFooter.php" ?>
</html>
