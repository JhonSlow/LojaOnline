<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ page import="model.Produto" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<link href="css/bootstrap.css" rel="stylesheet" type="text/css"/>
	<style type="text/css">@import url("css/bootstrap.css"); </style>
<title>Lista Produtos </title>
</head>
<body class="fundo">
<div class="div-form2">
	<form action="http://localhost:8080/LojaOnline/ServletController" method="get">
		<h1>Produtos</h1>
		<%
		List<Produto> produtos = (List<Produto>)request.getSession().getAttribute("listaProduto");
		 if(produtos == null)
			 produtos = new ArrayList<Produto>();
		%>
		<table class="tabela">
			<tr><td>ID-</td><td>NOME-</td><td>DESCRIÇÃO-</td><td>IMAGEM-</td><td>CATEGORIA-</td><td>PRECO</td></tr>
			<%for(Produto pro : produtos){%>
				<tr>
					<td><input type="radio" name="id"  value="<%=pro.getId()%>"/></td>
					<td><%=pro.getNome()%></td>
					<td><%=pro.getDesc()%></td>
					<td><%=pro.getImagem()%></td>
					<td><%=pro.getCate()%></td>
					<td><%=pro.getPreco()%></td>
				</tr>
			<%}%>
			</table>
			<table>
			<tr>
			<td><input type="submit" class="btn btn-primary" name="botao" value="Cadastrar"/></td>
			<td><input type="submit" class="btn btn-primary" name="botao" value="Mostrar"/></td>
			<td><input type="submit" class="btn btn-primary" name="botao" value="Editar"/></td>
			<td><input type="submit" class="btn btn-primary" name="botao" value="Deletar"/></td>
			<td><input type="submit" class="btn btn-primary" name="botao" value="Pesquisar"/></tr>
			</table>
		
	</form>
	</div>
</body>
</html>





