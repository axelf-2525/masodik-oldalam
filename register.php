<!-- Regisztráció -->

<article id="register" class="panel">

<header>

<h2>Regisztráció</h2>

</header>

<section>

<form action="" method="post">

<input name="username" placeholder="Felhasználónév" id="username" value="" type="text" /><br /></td></p>

<input name="email" placeholder="E-mail" id="email" value="" type="text" /><br /></p>

<input name="password" placeholder="Jelszó" id="password" value="" type="password" /><br /></p>

<input name="passwordre" placeholder="Újra Jelszó" id="passwordre" value="" type="password" /><br /></p>

<p><input name="register" value="Regisztráció" type="submit" /></p>

<?php


if(isset($_POST['register']))

{

$username = strip_tags($_POST['username']);

$email = strip_tags($_POST['email']);

$password = strip_tags($_POST['password']);

$passwordre = strip_tags($_POST['passwordre']);

if($username&&$email&&$password&&$passwordre)

{

echo "Eddig minden rendben!";

}

else

{

echo "Nem töltöttél ki minden adatot!";

    }

    }      


?>

   </form>
  </section>
</article>
