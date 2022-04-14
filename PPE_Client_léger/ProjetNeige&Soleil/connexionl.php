<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>ConnectionL</title>
    <link href="stylesn&s.css" rel="stylesheet">
</head>
<body>
    
<?php 


if (isset($_POST["bout"])) {

$nom = $_POST["noml"];
$mdp = $_POST["mdpl"];
$id = mysqli_connect("127.0.0.1", "root", "", "ns");
mysqli_query($id,"SET NAMES 'utf8'");
$requete1 = "SELECT * FROM locataire where noml= '$nom' AND mdpl = '$mdp' ";
$reponse1 = mysqli_query($id, $requete1);

if (mysqli_num_rows($reponse1)>0) {
    $_SESSION["noml"]= $nom;
    header("location:vitrineN&S (1).php");
}

else{ 
  echo "erreur de pseudo ou mot de passe ";
}
}
?>


<div class="section " align ="center" style="margin-top: 200px">

  <h2>CONNEXION LOCATAIRE</h2>
  <form method = "post" action = "" >
    
      <label for="name">Name:</label>
      <input type="text" name = "noml"  placeholder="Entrer nom" required>
    
    <br><br><br>

      <label for="mdp">Password:</label>
      <input type="password"  id="mdpl" placeholder="Entrer mot de passe" name="mdp" required>
    
  
   <br><br><br>

    <input type="submit" name = "bout" class="btn btn-primary" value="se connecter">
    <p> si vous n'êtes n'avez pas de compte inscrivez-vous <a href="inscriptionl.php">ici </a> </p>
  </form>

<div align="center" style="background:grey;     margin-top: 10px;">


</body>
</html>