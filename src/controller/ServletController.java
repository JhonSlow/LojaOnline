package controller;

import java.util.ArrayList;
import java.util.List;
import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.Produto;

/**
 * Servlet implementation class ServletController
 */
@WebServlet("/ServletController")
public class ServletController extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public ServletController() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		 String url = "";
		 String opcao = request.getParameter("opcoes");
		 if(opcao != null){
			 if(opcao.equals("inserir"))
				 url = "/CadastroProduto.jsp";
			 if(opcao.equals("listar"))
				 url = "/ListarProdutos.jsp";
			 if(opcao.equals("pesquisar"))
				 url = "/Pesquisa.jsp";
		 } else {
			 String botao = request.getParameter("botao");
			 if(botao.equals("Cadastrar"))
				 url = "/CadastroProduto.jsp";
			 if(botao.equals("Mostrar")){
				 url = "/MostrarProduto.jsp";
				 String op = request.getParameter("id");
				 if(op != null){
					 List<Produto> produtos = (List<Produto>)request.getSession().getAttribute("listaProduto");
					 int i = Integer.parseInt(op);
					 Produto pro = produtos.get(--i);
					 request.setAttribute("produto", pro);
					 
				 } else {
					 url = "/ListarProdutos.jsp";
				 }
			 }
				 
			 if(botao.equals("Pesquisar")){
				 url = "/Pesquisa.jsp";
			 } 
			 if(botao.equals("Buscar Id")){
				 url = "/Busca.jsp";
			 } 
			 if(botao.equals("Buscar Categoria")){
				 url = "/BuscaCatego.jsp";
			 } 
			 if(botao.equals("Editar")){
				 url = "/EditarProduto.jsp";
				 String op = request.getParameter("id");
				 if(op != null){
					 List<Produto> produtos = (List<Produto>)request.getSession().getAttribute("listaProduto");
					 int i = Integer.parseInt(op);
					 Produto pro = produtos.get(--i);
					 request.setAttribute("produto", pro);
					 }
			 }
			 if(botao.equals("Deletar")){
				 url = "/ListarProdutos.jsp";
				 List<Produto> produtos = (List<Produto>)request.getSession().getAttribute("listaProduto");
				 String op = request.getParameter("id");				
				 int i = Integer.parseInt(op);
				 Produto pro = produtos.get(--i);
				 produtos.remove(pro);				 
				 
			 } 
		 
	 }
		 
		 RequestDispatcher rd = request.getRequestDispatcher(url);
		 rd.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String botao = request.getParameter("botao");
				
		if(botao.equals("Adicionar")) {
			List<Produto> produtos = (List<Produto>)request.getSession().getAttribute("listaProduto");
			 if(produtos == null) {
				 produtos = new ArrayList<Produto>();
			 }
			 String nome = request.getParameter("nome");
			 String desc = request.getParameter("desc");
			 String imagem = request.getParameter("imagem");
			 String categoria = request.getParameter("categoria");
			 String preco = request.getParameter("preco");
			 
			 int id = produtos.size();
			 		 
			 Produto pro = new Produto();
			 pro.setId(++id);
			 pro.setNome(nome);
			 pro.setDesc(desc);
			 pro.setImagem(imagem);
			 pro.setCate(categoria);
			 pro.setPreco(Double.parseDouble(preco));
			 		 
			 produtos.add(pro);
			 request.getSession().setAttribute("listaProduto", produtos);
			 
			 RequestDispatcher rd = request.getRequestDispatcher("/ListarProdutos.jsp");
			 rd.forward(request, response);
			 
		}else if(botao.equals("Editar")) {
			List<Produto> produtos = (List<Produto>)request.getSession().getAttribute("listaProduto");
			 if(produtos == null) {
				 produtos = new ArrayList<Produto>();
			 }
			 
			 String op = request.getParameter("id");
			 int id = Integer.parseInt(op);
			 
			 Produto proR = produtos.get(--id);
			 produtos.remove(proR);
			 
			 String nome = request.getParameter("nome");
			 String desc = request.getParameter("desc");
			 String imagem = request.getParameter("imagem");
			 String categoria = request.getParameter("categoria");
			 String preco = request.getParameter("preco");			 
			
			 Produto pro = new Produto();
			 pro.setId(++id);
			 pro.setNome(nome);
			 pro.setDesc(desc);
			 pro.setImagem(imagem);
			 pro.setCate(categoria);
			 pro.setPreco(Double.parseDouble(preco));
			 		 
			 produtos.add(pro);
			 request.getSession().setAttribute("listaProduto", produtos);
			 
			 RequestDispatcher rd = request.getRequestDispatcher("/ListarProdutos.jsp");
			 rd.forward(request, response);
		 }
			 
		 
	}
		   
		
	}

