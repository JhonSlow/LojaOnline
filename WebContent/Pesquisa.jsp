<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
	<link href="css/bootstrap.css" rel="stylesheet" type="text/css"/>
	<style type="text/css">@import url("css/bootstrap.css"); </style>
<title>Pesquisa</title>
</head>
<body>
	<h2>Pesquisar</h2>
	<div class="div-form2">
	<form action="http://localhost:8080/LojaOnline/ServletController" method="get">
	
	Pesquisar ID:
	<input type="text" name="id" value="0">
	
	<button type="submit" class="btn btn-primary" name="botao" value="Buscar Id">Buscar Id</button> <br>
	
	Pesquisar Categoria:
	<div class="div-sele">
	<select name="categoria" class="custom-select">
	<option value="celulares">Celulares</option>
	<option value="eletrodomesticos">Eletrodomesticos</option>
	<option value="brinquedos">Brinquedos</option>
	<option value="informatica">Informatica</option>
	<option value="tvs">TVs</option>
	<option value="audio">Audio</option>
	</select>
	</div>
	<button type="submit" class="btn btn-primary" name="botao" value="Buscar Categoria">Buscar Categoria</button>
	</form>
	</div>
</body>
</html>