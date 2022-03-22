<title>
    SneakX
</title>

<?php
include_once "Controlleur/controleurPrincipal.php";
include_once "Modele/bd.inc.php";
include "Vue/vHeader.php";

if (isset($_GET["action"])){
    $action = $_GET["action"];
}
else{

    $action = "accueil";
}

$fichier = controleurPrincipal($action);
include "Controlleur/$fichier";

include_once "Vue/vFooter.php";
?>