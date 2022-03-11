package ArrayList_19_08;

import java.util.ArrayList;

public class CarrinhoDeCompras {
	
	private double total_pagar = 0;
	
	ArrayList<Pizza> carrinho = new ArrayList();
	
	public void adicionarItem(Pizza p) {
		carrinho.add(p);
		total_pagar = total_pagar + p.getPreco();
	}
	
	public int getTotalPizzasAdicionadas() {
		return carrinho.size();
	}
	
	public double getTotalPagar() {
		return total_pagar;
	}
}
