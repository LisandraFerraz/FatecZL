package Prova2_23_09;

import java.util.ArrayDeque;
import java.util.Deque;

public class AddElementos {
	public static void main(String[] args) {
		Deque<String> personagensIniciais = new ArrayDeque<>();
		
		System.out.println("-- Adicionando elementos --");
		
		personagensIniciais.add("Amber");
		personagensIniciais.add("Kaeya");
		personagensIniciais.add("Lisa");
		
		System.out.printf("\nPrimeiro deque sem alterações: %s", personagensIniciais);
		
		personagensIniciais.addFirst("Jean");
		
		System.out.println("\n");
		System.out.printf("Elemento adicionado no inicio: %s", personagensIniciais.peekFirst());
		System.out.printf("\nPrimeiro deque com alterações no inicio %s", personagensIniciais);
		
		personagensIniciais.addLast("Diluc");
		
		System.out.println("\n");
		System.out.printf("Elemento adicionado no final: %s", personagensIniciais.peekLast());
		System.out.printf("\nPrimeiro deque com alterações no final %s", personagensIniciais);	

		System.out.printf("\n\nPersonagens totais: %s", personagensIniciais.size());
		
	}
}
