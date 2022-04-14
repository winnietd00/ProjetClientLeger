<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>INSCRIPTIONP</title>
    <link rel="stylesheet" href="stylesn&s.css">
</head>
<body>
<center>
<?php
    if(!isset($_POST["bout"])){?>

<div class = "section" style="margin-top: 50px">

    <h1>Inscription du Propriétaire</h1><hr><br>
    <form action="" method="post">
    <input type="text" name="nomp" placeholder="Entrer le nom :" required><br><br>
    <input type="text" name="prenomp" placeholder="Entrer le prénom :"><br><br>
    <input type="text" name="villep" placeholder="ville :"><br><br>
    <input type="text" name="cpp" placeholder="code postal :"><br><br>
    <input type="password" name="mdp" placeholder="Mot de passe :"><br><br>
   
    <input type="adress" name="adressep" placeholder="adresse :"><br><br>
    <input type="date" name="date_naissance" placeholder="date_naissance :"><br><br>
    <p>PAYS : 
        <select name="pays">
            <option value="France"> France </option>
            <option value="Belgique"> Belgique </option>
            <option value="Angleterre"> Angleterre </option>
            <option value="Espagne"> Espagne </option>
            <option value="Allemagne"> Allemagne </option>
        </select><br><br><br><br>
    </p>
    <input type="submit" value="Envoyer" name="bout"><br>
    
    </form><hr>
</div style="background:grey; ">
    <?php }  ?>
</center>
    <?php
    if(isset($_POST["bout"])){
        $nom = $_POST["nomp"];
        $prenom = $_POST["prenomp"];
        $ville = $_POST["villep"];
        $cpp = $_POST["cpp"];
        $mdp = $_POST["mdp"];
        $adresse = $_POST["adressep"];
        $pays = $_POST["pays"];
        $date_naissance = $_POST["date_naissance"];
        $id = mysqli_connect("127.0.0.1","root", "", "ns");
        $req = "select * from proprietaire where nomp = '$nom' and prenomp = '$prenom'";
        $rep = mysqli_query($id, $req);
        $test = 0;
        if(mysqli_num_rows($rep)>0){
            echo "<h3>Ce nom ou prenom existe déjà ...";
            $test = 1;
        }
        $req = "select * from proprietaire where mdp = '$mdp'";
        $rep = mysqli_query($id, $req);
        if(mysqli_num_rows($rep)>0){
            echo "<h3>Ce mot de passe existe déjà...";
            $test = 1;
        }
        if($test==0){
            $req = "INSERT INTO proprietaire (prenomp,nomp,date_naissance,adressep,paysp,villep,cpp,mdp,niveau)
            VALUES ('$prenom','$nom','$date_naissance','$adresse','$pays','$ville','$cpp','$mdp','1')";
                $rep = mysqli_query($id, $req);
                echo "Inscription réussie, veuillez vous connecter...";
                header("refresh:3;url=connexionp.php");
            
        }
        

    }
    ?>

    
</body>
</html>