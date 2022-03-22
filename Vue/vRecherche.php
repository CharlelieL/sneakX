<link rel="stylesheet" href="css\cssPaireBase.css">
<link rel="stylesheet" href="..\css\cssHeader.css">
<link rel="stylesheet" href="..\css\cssFooter.css">

<div class="card-container">
    <?php for ($i = 0; $i < count($rechercheReturn); $i++): ?>

        <div class="card" >
            <div class="img">
                <img class="imgVoiture" src="" alt="">
                <?= $rechercheReturn[$i]["NOM"] ?> 
                &nbsp;PRIX :&nbsp;
                <?= $rechercheReturn[$i]["PRIXRETAI"]."€";?>
            </div>
        </div>
    <?php endfor ?>
</div>

<br><br><br><br>