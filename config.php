<?php

$db_host= "localhost";
$db_user="root";
$db_pass="";
$db_name="biblioteca";

$conn = new mysqli($db_host, $db_user, $db_pass, $db_name);

if ($conn -> connect_error){
    die("Conexão falhou " . $conn -> connect_error);
}

else {

    echo "Parabéns!!! você está conectado ao banco de dados";
}
