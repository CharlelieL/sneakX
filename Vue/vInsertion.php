<link rel="stylesheet" href="..\css\cssCCI.css">
<link rel="stylesheet" href="..\css\cssHeader.css">
<link rel="stylesheet" href="..\css\cssFooter.css">
<link rel="short icon" type="image/png" href="css\image\logo_SNEAKX_icone.png">
    <title>CRUD</title>
    <?php
        include_once "vHeader.php"
    ?>
</head>
<body>
    <div class="crud">
        <div class="InsertPaire">
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
        </div>

        <div class="ModifPaire">
            <h1>Modification d'une paire</h1>
            <form class="formulaire">
                SKU :
                <input id="ModifSKU" type="text" name="SKU" placeholder="SKU de la paire à modifier"><br><br>
                Prix d'achat : 
                <input id="ModifPrixAchat" type="text" name="PXAchat" placeholder="Modifier le prix d'achat"><br><br>
                Prix de revente : 
                <input id="ModifPrixReselle" type="text" name="PxReselle" placeholder="Modifier le prix de revente"><br><br>
                Date de sorti : 
                <input id="ModifDateSorti" type="date" name="DateSorti" placeholder="Modifier la date de sortie"><br><br>
                Nom : 
                <input id="ModifNom" type="text" name="Nom" placeholder="Modifier le nom"><br><br>
                Marque : 
                <input id="ModifMarque" type="text" name="Marque" placeholder="Modifier la marque"><br><br>
                Genre : 
                <select name="ModifGenre" id="pet-select">
                    <option value="Homme">Homme</option>
                    <option value="Femme">Femme</option>
                    <option value="Unisexe">Unisexe</option>
                </select><br><br>
                <input type="button" value="Modifier">
            </form>
        </div>

        <div class="SupprPaire">
            <h1>Supression d'une paire</h1>
            <form class="formulaire">
                SKU :
                <input id="ModifSKU" type="text" name="SKU" placeholder="SKU de la paire à supprimer"><br><br>
                <input type="button" value="Supprimer">
            </form>
        </div>
    </div>
</body>
<?php include_once "vFooter.php" ?>
</html>