<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>InscriptionL</title>
    <link rel="stylesheet" href="stylesn&s.css">
</head>
<body>
<center>
<?php
    if(!isset($_POST["bout"])){?>

<div class = "section" style="margin-top: 50px">

    <h1>Inscription du Locataire</h1><hr><br>
    <form action="" method="post">
    <input type="text" name="noml" placeholder="Entrer le nom :" required><br><br>
    <input type="text" name="prenoml" placeholder="Entrer le prénom :"><br><br>
    <input type="int" name="telephonel" placeholder="n° télephone :"><br><br>
    <input type="text" name="pseudol" placeholder="pseudo :"><br><br>
    <input type="password" name="mdpl" placeholder="Mot de passe :"><br><br>
    <input type="text" name="adresse" placeholder="Adresse :"><br><br>
    <input type="adress" name="mail" placeholder="e-mail :" required><br><br>
    <input type="date" name="datenaisl" placeholder="date de naissance :"><br><br>
    <br><br><br>
    
    <input type="submit" value="Envoyer" name="bout"><br>
    
    </form><hr>
</div style="background:grey; ">
    <?php }  ?>
</center>
    <?php
    if(isset($_POST["bout"])){
        $nom = $_POST["noml"];
        $prenom = $_POST["prenoml"];
        $pseudo = $_POST["pseudol"];
        $telephone = $_POST["telephonel"];
        $mdp = $_POST["mdpl"];
        $adresse = $_POST["adresse"];
        $email = $_POST["mail"];
        $datenais = $_POST["datenaisl"];
        $id = mysqli_connect("127.0.0.1","root", "", "ns");
        $req = "select * from locataire where noml = '$nom' and prenoml = '$prenom'";
        $rep = mysqli_query($id, $req);
        $test = 0;
        if(mysqli_num_rows($rep)>0){
            echo "<h3>Ce nom ou prenom existe déjà ...";
            $test = 1;
        }
        $req = "select * from locataire where mdpl = '$mdp'";
        $rep = mysqli_query($id, $req);
        if(mysqli_num_rows($rep)>0){
            echo "<h3>Ce mot de passe existe déjà...";
            $test = 1;
        }
        if($test==0){
            $req = "INSERT INTO locataire (prenoml,noml,datenaisl,adresse,telephonel,mail,pseudol,mdpl,niveau)
            VALUES ('$prenom','$nom','$datenais','$adresse','$telephone','$email','$pseudo','$mdp','2')";
                $rep = mysqli_query($id, $req);
                echo "Inscription réussie, veuillez vous connecter...";
                header("refresh:3;url=connexionl.php");
            
        }
        

    }
    ?>

    
</body>
</html>