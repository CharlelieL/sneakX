<?php

function controleurPrincipal($action){
    $lesActions = array();
    $lesActions["defaut"] = "cBase.php";
    $lesActions["chaussure"] = "cPaireBase.php";

    
    if (array_key_exists ( $action , $lesActions )){
        return $lesActions[$action];
    }
    else{
        return $lesActions["defaut"];
    }

}

?>