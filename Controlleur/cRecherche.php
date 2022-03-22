<?php
include_once "../Modele/bd.recherche.inc.php";

// recuperation des donnees GET, POST, et SESSION

// appel des fonctions permettant de recuperer les donnees utiles a l'affichage
$recherche=$_POST['search'];
echo $recherche;
$rechercheReturn=getRecherche($recherche);

// traitement si necessa;ire des donnees recuperees
;

// appel du script de vue qui permet de gerer l'affichage des donnees

include_once "../Vue/vRecherche.php";



?>