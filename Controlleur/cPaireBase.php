<?php
include_once "Modele/bd.paireBase.inc.php";

// recuperation des donnees GET, POST, et SESSION
;

// appel des fonctions permettant de recuperer les donnees utiles a l'affichage
$var=$_GET['id'];
$cPaire=getPaireBase($var);
$nbPaireResultat = "Il y a ".count($cPaire)." Résultats";


$img=getPaireBase($var);
    
// traitement si necessaire des donnees recuperees

// appel du script de vue qui permet de gerer l'affichage des donnees
include_once "Vue/vPaireBase.php";
?>