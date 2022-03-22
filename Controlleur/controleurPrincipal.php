<?php

function controleurPrincipal($action){
    $lesActions = array();
    $lesActions["defaut"] = "cBase.php";
    $lesActions["chaussure"] = "cPaireBase.php";
    $lesActions["recherche"] = "cRecherche.php";
    $lesActions["connexion"] = "cConnexion.php";
    $lesActions["crud"] = "cInscription.php";
    $lesActions["contact"] = "cContact.php";
    
    if (array_key_exists ( $action , $lesActions )){
        return $lesActions[$action];
    }
    else{
        return $lesActions["defaut"];
    }

}

?>