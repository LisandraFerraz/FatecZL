package ArrayList_18_11;

public class TestePilha {
	
	public static void main(String[] args) {
		Pilha<Integer> pilha = new Pilha<Integer>();
		
		System.out.println(pilha);
		
		System.out.println("Tamanho da minha pilha: " + pilha.tamanho());
		
		for (int i =1; i<=10; i++) {
			pilha.empilha(i);
		}
		
		System.out.println(pilha);
		System.out.println("Tamanho da minha pilha: " + pilha.tamanho());
		
		
	}
}
