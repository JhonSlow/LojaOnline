package model;

public class Produto {
	
	private int id;
	private String nome,desc,imagem,categoria;
	private Double preco;
	
	public Produto() {
		
	}
	
	public String getImagem() {
		return imagem;
	}
	public void setImagem(String imagem) {
		this.imagem = imagem;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getNome() {
		return nome;
	}
	public void setNome(String nome) {
		this.nome = nome;
	}
	public String getDesc() {
		return desc;
	}
	public void setDesc(String desc) {
		this.desc = desc;
	}
	public Double getPreco() {
		return preco;
	}
	public void setPreco(Double preco) {
		this.preco = preco;
	}
	public String getCate() {
		return categoria;
	}
	public void setCate(String cate) {
		this.categoria = cate;
	}
	
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + id;
		result = prime * result + ((nome == null) ? 0 : nome.hashCode());
		result = prime * result + ((desc == null) ? 0 : desc.hashCode());
		result = prime * result + ((imagem == null) ? 0 : imagem.hashCode());
		result = prime * result + ((categoria == null) ? 0 : categoria.hashCode());
		result = prime * result + ((preco == null) ? 0 : preco.hashCode());
		return result;
	}
	
	public boolean equals(Object obj) {
		if (this == obj) {
			return true;
			}
		
		if (obj == null) {
			return false;
			}
		
		if (getClass() != obj.getClass()) {
			return false;
			}
		
		Produto other = (Produto) obj;
		
		if (id != other.id) {
			return false;
			}
		
		if (nome == null) {
			if (other.nome != null) {
				return false;
				}
		} else if (!nome.equals(other.nome)) {
			return false;
			}
		
		if (preco == null) {
			if (other.preco != null) {
				return false;
				}
		} else if (!preco.equals(other.preco)) {
			return false;
			}
		
		if (categoria == null) {
			if (other.categoria != null) {
				return false;
				}
		} else if (!categoria.equals(other.categoria)) {
			return false;
			}
		
		return true;
	
	}
	
}
