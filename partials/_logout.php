<?php

session_start();
echo "Logging you out. Please wait...";
unset($_SESSION["loggedin"]);
unset($_SESSION["username"]);
unset($_SESSION["userId"]);
unset($_SESSION["table_no"]);
// session_unset();
// session_destroy();

header("location: /caffes_project/index.php");
?>