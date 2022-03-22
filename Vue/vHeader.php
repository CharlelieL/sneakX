<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css\cssHeader.css">
    <link rel="short icon" type="image/png" href="css\image\logo_SNEAKX_icone.png">

    <title>Document</title>
    <div class="ContainerHead">
        <div class="logo">
            <a href="index.php"><img src="css\image\logo_Final.png" width=190px height=100px ></a>
        </div>
        <form action="Controlleur/cRecherche.php " class="RechercheBarre" method="post">
            <input id="BarreDeRecherche" type="text" name="search" placeholder="Rechercher">
            <input type="submit" name ="btnRecherche"value="OK">
        </form>
        
        <div  class="ContainerMenu"> 
            <form class="ContainerMenu">
                <span class="btn1"><a class="nav1" href=vue\vConnexion.php>
                    <input  type="hidden">
                </a></span>
                <span class="btn2"><a  href=vue\vContact.php>
                    <input  type="hidden">
                </a></span>
                <span class="btn3"><a class="nav3" href=vue\vInsertion.php>
                    <input  type="hidden">
                </a></span>
            </form>
        </div>
    </div>
</head>
<body>
</body>
</html>

