<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>ConnexionP</title>
    
    <link href="stylesn&s.css" rel="stylesheet">
</head>
<body>
    

<?php

if (isset($_POST["bout"])) {

    $nom = $_POST["nomp"];
    $mdp = $_POST["mdp"];
    $id = mysqli_connect("127.0.0.1", "root", "", "ns");
    mysqli_query($id,"SET NAMES 'utf8'");
    $requete = "SELECT * FROM proprietaire where nomp= '$nom' AND mdp = '$mdp' ";
    $reponse = mysqli_query($id, $requete);
    
    if (mysqli_num_rows($reponse)>0) {
        $_SESSION["nomp"]= $nom;
        header("location:vitrineN&S (1).php");

    }else{ 
    echo "erreur de login ou mot de passe ";
}
}
?>

<div class="section " align ="center" style="margin-top: 200px">

  <h2>CONNEXION PROPRIETAIRE</h2>
  <form method = "post" action = "" >
    
      <label for="name">Name:</label>
      <input type="text" name = "nomp"  placeholder="Entrer nom" name="nom" required>
    
    <br><br><br>

      <label for="mdp">Password:</label>
      <input type="password"  id="mdp" placeholder="Entrer mot de passe" name="mdp" required>
    
  
   <br><br><br>

    <input type="submit" name = "bout" class="btn btn-primary" value="se connecter">
    <p> si vous n'êtes n'avez pas de compte inscrivez-vous <a href="inscriptionp.php">ici </a> </p>
  </form>

<div align="center" style="background:grey;     margin-top: 10px;">



</body>
</html>


