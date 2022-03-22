<link rel="stylesheet" href="css\cssPaireBase.css">

<?php
include_once "vHeader.php";
?> 

<div class="nbRes">
    <h1><?php echo $nbPaireResultat."<br>"; ?></h1>
</div> 

<div class="card-container">
    <?php for ($i = 0; $i < count($cPaire); $i++): ?>

        <div class="card" >
            <div class="img">
                <img class="imgVoiture" src="" alt="">
                <?= $cPaire[$i]["NOM"] ?> 
                &nbsp;PRIX :&nbsp;
                <?= $cPaire[$i]["PRIXRETAI"]."€";?>
            </div>
        </div>
        
    <?php endfor ?>
    
</div>

<br><br><br><br>
