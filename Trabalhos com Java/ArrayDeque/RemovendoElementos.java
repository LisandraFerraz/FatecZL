package Prova2_23_09;

import java.util.ArrayDeque;
import java.util.Deque;

public class RemovendoElementos {

	public static void main(String[] args) {

		System.out.println("-- Removendo elementos --");
		
		Deque<String> elementos = new ArrayDeque<>();

		elementos.add("Anemo");
		elementos.add("Geo");
		elementos.add("Electro");
		elementos.add("Dendro");
		elementos.add("Hydro");
		elementos.add("Pyro");
		
		System.out.printf("\nSegundo deque sem alterações: %s", elementos);
		
		elementos.remove();

		System.out.printf("\n\nSegundo deque removendo sem especificar: %s", elementos);
		
		elementos.removeLast();

		System.out.printf("\n\nSegundo deque removendo último item: %s", elementos);

		elementos.removeFirst();

		System.out.printf("\n\nSegundo deque removendo primeiro item: %s", elementos);
		
		System.out.printf("\n\nElementos totais: %s", elementos.size());
	}
	
}
