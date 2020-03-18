<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
	<link href="css/bootstrap.css" rel="stylesheet" type="text/css"/>
	<style type="text/css">@import url("css/bootstrap.css"); </style>
<title>Cadastro de Produto</title>
</head>
<body class="fundo">
		<h2>Cadastro de Produto</h2>
	<div class="div-form">
	<form action="http://localhost:8080/LojaOnline/ServletController" method="post" >

	<table class="tabela">
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
                	
                	<tr><td><h5>Nome:</h5>
                		<input type="text" name="nome" value="Nome"></td>
                	</tr>
           		   
           		 
               		 <tr><td><h5>Descricao:</h5>
               		 <input type="text" name="desc" value="Produto"/></td>
               		 </tr>
           			 
            	
                	<tr><td><h5>Preco:</h5>
                	<input type="text" name="preco" value="0"></td>
                	</tr>
           		
            	
                	<tr><td><h5>Imagem:</h5>
                	<input type="file"  class="custom-file" name="imagem" value="">	</td>
                	</tr>      				

          	</table><br>
          			<button class="btn btn-primary" name="botao" type="submit" value="Adicionar" >Adicionar</button>
                	<button class="btn btn-primary" name="botao" type="reset" value="Limpar">Limpar</button>
       	</form>
	</div>

	
     
</body>
</html>