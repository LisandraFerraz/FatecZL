package ArrayList_19_08;

import java.util.HashMap;
import java.util.Map;

public class Pizza {
	private String sabor;
	private double preco;
	private static int qtd_pizzas = 0;
	private int indice = 0;
	
	Map<Integer, String> tabela_de_ingredientes = new HashMap<Integer, String>();
	
	//CONSTRUTOR
	public Pizza(String sabor) {
		this.sabor = sabor;
		qtd_pizzas = qtd_pizzas+1;
	}
	
	//metodos de acesso
	public String getSabor() {
		return sabor;
	}
	
	public double getPreco() {
		if(tabela_de_ingredientes.size() < 3) 
			preco = 40;
		else if(tabela_de_ingredientes.size() >=3 && tabela_de_ingredientes.size() <=5) 
			preco = 50;
		else 
			preco = 60;
		
		return preco;
	}
	
	public int getQtd_pizzas() {
		return qtd_pizzas;
	}
	
	//setters
	public void setSabor(String sabor) {
		this.sabor = sabor;
	}

	public void setPreco(double preco) {
		this.preco = preco;
	}

	public void adicionaIngredientes(String ingredientes){
		//adicionar itens na tabela
		tabela_de_ingredientes.put(++indice, ingredientes);
	}
}
