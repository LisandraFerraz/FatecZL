package ArrayList_19_08;

public class Principal {

	public static void main(String[] args) {
		
		CarrinhoDeCompras c1 = new CarrinhoDeCompras();
		
		Pizza p1 = new Pizza("Palmito"); //50
		Pizza p2 = new Pizza("Frango com catipiry"); //40
		Pizza p3 = new Pizza("Peperoni"); //50
		Pizza p4 = new Pizza("Forneiro"); //60
		
		p1.adicionaIngredientes("palmito");
		p1.adicionaIngredientes("mussarela");
		p1.adicionaIngredientes("azeitona");
		
		p2.adicionaIngredientes("frango");
		p2.adicionaIngredientes("catupiry");

		p3.adicionaIngredientes("molho de tomate");
		p3.adicionaIngredientes("queijo");
		p3.adicionaIngredientes("peperoni");
		p3.adicionaIngredientes("cebola");

		p4.adicionaIngredientes("carne moida");
		p4.adicionaIngredientes("limão");
		p4.adicionaIngredientes("mussarela");
		p4.adicionaIngredientes("azeitona");
		p4.adicionaIngredientes("molho de tomato");
		p4.adicionaIngredientes("oregano");
		
		c1.adicionarItem(p1);
		c1.adicionarItem(p2);
		
		
		System.out.printf("\nTotal de pizzas no carrinho = %d", c1.getTotalPizzasAdicionadas());
		System.out.printf("\nTotal a pagar = %.2f", c1.getTotalPagar());
		
	}

}
