<ul class="header_action_btns ul_li_right clearfix">
    <li class="dropdown">
        <button type="button" class="user_btn" id="user_dropdown" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
            <i class="fal fa-user"></i>
        </button>
        <div class="user_dropdown rotors_dropdown dropdown-menu clearfix" aria-labelledby="user_dropdown">
            <?php if(isset($_SESSION['utilisateur'])){ ?>
                <div class="profile_info clearfix">
                    <a href="#!" class="user_thumbnail">
                        <img src="assets/images/about/anonyme.jpeg" alt="thumbnail_not_found">
                    </a>
                    <div class="user_content">
                        <h4 class="user_name"><a href="#!"><?php echo ($_SESSION['utilisateur']['nom'].' '.$_SESSION['utilisateur']['prenom']) ?></a></h4>
                        <span class="user_title">Utilisateur</span>
                    </div>
                </div>
                <ul class="ul_li_block clearfix">
                    <li><a href="profil.php"><i class="fal fa-user-circle"></i> Profile</a></li>
                    <li><a href="deconnexion.php"><i class="fal fa-sign-out"></i> Logout</a></li>
                </ul>
            <?php } else { ?>
                <ul class="ul_li_block clearfix">
                    <li><a href="connexion.php"><i class="fal fa-user-circle"></i> Se connecter</a></li>
                    <li><a href="inscription.php"><i class="fal fa-user-circle"></i> S'inscrire</a></li>
                </ul>
            <?php } ?>
        </div>
    </li>
</ul>