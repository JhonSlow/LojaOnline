<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ page import="model.Produto" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
	<link href="css/bootstrap.css" rel="stylesheet" type="text/css"/>
	<style type="text/css">@import url("css/bootstrap.css"); </style>
<title>Edição de Produto</title>
</head>
<jsp:useBean id="produto" class="model.Produto" scope="request"/> 
<body>

		<h1>Cadastro de Produto</h1>
	
	
	<div class="div-form">
		
		<form action="http://localhost:8080/LojaOnline/ServletController" method="post" >
			<%
			List<Produto> produtos = (List<Produto>)request.getSession().getAttribute("listaProduto");
			 if(produtos == null)
				 produtos = new ArrayList<Produto>();
			%>
			 
			<table  class="tabela">
				<tr>
     <td><h5>Categoria:</h5>
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
                	</td>
           		</tr> 
           		<tr>
           			<td><h5>Id:<jsp:getProperty name="produto" property="id"/></h5><input type="hidden" name="id" value="<jsp:getProperty name="produto" property="id"/>"></td>
           		</tr>
      		  	<tr>
                	<tr><td><h5>Nome:</h5>
                		<input type="text" name="nome"></td>
                	</tr>
           		 <tr><td><h5>Descricao:</h5>
               		 <input type="text" name="desc" /></td>
               		 </tr>
           			 
            	
                	<tr><td><h5>Preco:</h5>
                	<input type="text" name="preco"></td>
                	</tr>
           		
            	
                	<tr><td><h5>Imagem:</h5>
                	<input type="file"  class="custom-file" name="imagem"></td>
                	</tr> 			
               
          	</table><br>
          			<input class="btn btn-primary" name="botao" type="submit" value="Editar">
                	<input class="btn btn-primary" name="botao" type="reset" value="Limpar">
       	</form>
	</div>

	
     
</body>
</html>