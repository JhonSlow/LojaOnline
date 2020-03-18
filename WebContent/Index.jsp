<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<link href="css/bootstrap.css" rel="stylesheet" type="text/css"/>
	<style type="text/css">@import url("css/bootstrap.css"); </style>
<title>Home</title>
</head>
<body class="fundo">
	<h1>Menu</h1>
	<div class="div-form">
	<form action="http://localhost:8080/LojaOnline/ServletController" method="get">
			<h3>OPERAÇOES</h3>
			<div class="div-select">
			<select name="opcoes" class="custom-select">
			<option value="inserir">Inserir</option>
			<option value="listar">Lista</option>
			<option value="pesquisar">Buscar</option>
			</select><br>
			</div>
			<br>
			<br>
			<button name="btn-enviar" class="btn btn-primary" type="submit">Enviar</button>
	</form>
	</div>	
</body>
</html>