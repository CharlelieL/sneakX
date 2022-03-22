<?php

include_once "bd.inc.php";

function getPaireBase($var) 
{
    try {
        $cnx = connexionPDO();
        $req = $cnx->prepare('select * from chaussure where NOM like :paire;');
        $req -> bindvalue (':paire','%'.$var.'%',PDO::PARAM_STR);
        $req->execute();
        $resultat = $req->fetchall(PDO::FETCH_ASSOC);
    } catch (PDOException $e) {
        print "Erreur !: " . $e->getMessage();
        die();
    }
    return $resultat;
}