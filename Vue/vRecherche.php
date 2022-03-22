<title>
    <?= $rechercheReturn[$i]["NOM"] ?>
</title>

<style type="text/css">
            @import url("css/programmation.css");
</style>

<?php

for ($i = 0; $i < count($rechercheReturn); $i++) {
    ?>
    <div class="card" >
            <div class="img">
                <?= $rechercheReturn[$i]["NOM"] ?>
                &nbsp;PRIX :&nbsp;
                <?= $rechercheReturn[$i]["PRIXRETAI"]."€"?>
            </div>
    </div>
        <br><br>
    </div>
    
    <?php
} 

?>