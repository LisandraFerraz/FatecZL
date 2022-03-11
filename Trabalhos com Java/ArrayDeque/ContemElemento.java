package Prova2_23_09;

import java.util.ArrayDeque;
import java.util.Deque;

public class ContemElemento {
	public static void main(String[] args) {
		
		Deque<String> nacoes = new ArrayDeque<>();
		
		nacoes.add("Mondstadt");	
		nacoes.add("Liyue");	
		nacoes.add("Inazuma");
		
		System.out.printf("Existe Fontaine? %s", nacoes.contains("Fontaine"));
		System.out.printf("\nExiste Liyue? %s", nacoes.contains("Liyue"));
		

		System.out.printf("\n\nNações totais: %s", nacoes.size());
	}
}
