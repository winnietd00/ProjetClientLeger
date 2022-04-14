<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>AJOUTn&s</title>
    <link rel="stylesheet" href="vitrinestyle.css" media="page">
    <link href="vitrinestyle.css" rel="stylesheet">
</head>
<body>
    
<h1> AJOUT </h1>

</body>
</html>

<?php

$nom = $_POST["nomp"];
$prenom = $_POST["prenomp"];
$ville = $_POST["villep"];
$cpp = $_POST["cpp"];
$mdp = $_POST["mdp"];
$adressep = $_POST["adressep"];
$date_naissance = $_POST["date_naissance"];

$id = mysqli_connect("127.0.0.1","root", "", "ns");
mysqli_query($id,"SET NAMES 'utf8'");
//$req = "insert into proprietaire values (null,'$prenom','$nom','$date_naissance',null,null,'$adresse','$pays','$ville','$cpp','$mdp','1')";
$req = "insert into proprietaire (prenomp,nomp,,date_naissance,,adressep,paysp,villep,cpp,mdp,niveau)
             values ('$prenom','$nom','$date_naissance','$adresse','$pays','$ville','$cpp','$mdp','1')";
mysqli_query($id,$req);
//header("location:listeMedecins.php");
echo "Insertion réussie";
header("refresh:3;url=connexion.php");
?>
