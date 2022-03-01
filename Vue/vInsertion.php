<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="..\css\cssCCI.css">
    <title>Insertion</title>
    <?php
        include_once "vHeader.php"
    ?>
</head>
<body>
    <h1>Insertion d'une paire</h1>
    <form class="formulaire">
        SKU :
        <input id="InsertSKU" type="text" name="SKU" placeholder="Saisir le SKU"><br><br>
        Prix d'achat : 
        <input id="InsertPrixAchat" type="text" name="PXAchat" placeholder="Saisir le prix d'achat"><br><br>
        Prix de revente : 
        <input id="InsertPrixReselle" type="text" name="PxReselle" placeholder="Saisir le prix de revente"><br><br>
        Date de sorti : 
        <input id="InsertDateSorti" type="date" name="DateSorti" placeholder="Saisir la date de sortie"><br><br>
        Nom : 
        <input id="InsertNom" type="text" name="Nom" placeholder="Saisir le nom"><br><br>
        Marque : 
        <input id="InsertMarque" type="text" name="Marque" placeholder="Saisir la marque"><br><br>
        Genre : 
        <select name="InsertGenre" id="pet-select">
            <option value="Homme">Homme</option>
            <option value="Femme">Femme</option>
            <option value="Unisexe">Unisexe</option>
        </select><br><br>
        <input type="button" value="Inserer">
    </form>
</body>
<?php include_once "vFooter.php" ?>
</html>