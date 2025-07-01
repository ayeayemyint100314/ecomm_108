<?php
if(isset($_SESSION['adminId']))
unset($_SESSION['adminId']);
if(isset($_SESSION['login']))
unset($_SESSION['login']);
header("Location:login.php");


?>