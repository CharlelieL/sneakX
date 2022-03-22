<?php

include_once "bd.inc.php";

function getBase() 
{

    try {
        $cnx = connexionPDO();
        $req = $cnx->prepare('select * from chaussure;');
        $req->execute();
        $resultat = $req->fetch(PDO::FETCH_OBJ);
    } catch (PDOException $e) {
        print "Erreur !: " . $e->getMessage();
        die();
    }
    return $resultat;
}