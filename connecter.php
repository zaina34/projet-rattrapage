

 
 
 <!DOCTYPE HTML>
  <HTML>
  <head>
  <TITLE>page connecter</TITLE>
  </head>
  <?php
  if($_POST['email']== "" or $_POST['mdp']== "" ){
    echo'<meta http-equiv="refresh" content="0; url=connexion.php">';
	
	
  }
  
  

  else{
	  require_once('Tools.php');
    $bdd =  getBD();
		$query = "select * from utilisateur where mail='".$_POST ['email']."' && mdp='".$_POST['mdp']."'";

    $rep = $bdd->query($query);

    while ($ligne = $rep->fetch()) {
      $_SESSION['utilisateur']=array(
        'nom'=>$ligne['nom'],
        'prenom'=>$ligne['prenom'],
        'adresse'=>$ligne['adresse'],
        'num'=>$ligne['num'],
        'mail'=>$ligne['mail'],
        'classe'=>$ligne['classe']
      );
    
      echo '<meta http-equiv="Refresh" content="0;url=profil.php">';
	
    }
  }
  ?>
 


    </body>
 </HTML>
