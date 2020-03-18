<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<link href="css/bootstrap.css" rel="stylesheet" type="text/css"/>
	<style type="text/css">@import url("css/bootstrap.css"); </style>
	<title>Produto</title>
</head>
<jsp:useBean id="produto" class="model.Produto" scope="request"/> 
<body>
<h1> Produto </h1>
	<div class="div-form2">
	<form action="http://localhost:8080/LojaOnline/ServletController" method="get">
	<h5>Id: <jsp:getProperty name="produto" property="id" /></h5>		
	<h5>Nome: <jsp:getProperty name="produto" property="nome" /></h5>
	<h5>Descrição: <jsp:getProperty name="produto" property="desc" /></h5>
	<h5>Imagem:<br><IMG SRC="<jsp:getProperty name="produto" property="imagem" />"  WIDTH="100" HEIGHT="100" /></h5>
	<h5>Categoria: <jsp:getProperty name="produto" property="cate" /></h5>
	<h5>Preço: <jsp:getProperty name="produto" property="preco" /></h5>
	<table><tr>
       <td><input type="submit" class="btn btn-primary" name="botao" value="Cadastrar"/></td>
			<td><input type="submit" class="btn btn-primary" name="botao" value="Pesquisar"/></tr>
                </table>
	</form>
	</div>
	
</body>
</html>