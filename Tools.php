<?php
session_start();
if(!isset($_SESSION['utilisateur']) && !in_array(basename($_SERVER['PHP_SELF']), array('connexion.php', 'connecter.php', 'enregistrement.php', 'inscription.php'))){
    header('location:connexion.php');
}
function getBD(){
    $bdd =  new PDO('mysql:host=localhost;dbname=projetgares;charset=utf8','root', 'root');
    return $bdd;
}
?>