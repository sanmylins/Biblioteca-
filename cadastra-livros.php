<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=<device-width>, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="style.css">
</head> 
<?php

include "config.php";
if(!$conn){
    die ("Conexão  falhou: " . mysqli_connect_error());

}
//recebe os dados 

$Titulo= $_POST ['Titulo'];
$Autor= $_POST ['Autor'];
$Editora= $_POST ['Editora'];
$Sinopse= $_POST ['Sinopse'];
$AnoPublicacao= $_POST ['AnoPublicacao'];
$Genero= $_POST ['Genero'];
$Paginas= $_POST ['Paginas'];

//cria variável para inserir o registro 
$sql = "INSERT INTO `livros`
(`Titulo`, `Autor`, `Editora`, `Sinopse`, `AnoPublicacao`, `Genero`, `Paginas`) VALUES 
('$Titulo','$Autor','$Editora','$Sinopse','$AnoPublicacao','$Genero','$Paginas')";

//executa a consulta SQL. Se  falhar, exibe o erro do banco de dados 
$query  = mysqli_query(mysql: $conn,query: $sql) or
die (mysqli_error(mysql: $conn));

if($query){
    echo "<center>";
    echo "cadrasto  realizado com sucesso!<br>";
    echo "<a href='index.php'><button title='Home page'>Voltar</button></a>";
} else {
    echo "<center>";
    echo "Erro ao cadastrar!<br>";
    echo "<a href='index.php'><button title='Home page'>Voltar</button></a>";
    echo "/center>";
    }

?>
