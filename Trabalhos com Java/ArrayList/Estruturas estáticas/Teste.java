package ArrayList_18_11;

import java.util.ArrayList;

public class Teste {
	public static void main(String[] args) {
		ArrayList<String> arrayList = new ArrayList<String>();
		
		arrayList.add("Elemento A");
		arrayList.add("Elemento B");
		
		System.out.println(arrayList);
		
		arrayList.add(1, "Elemento B");
		
		System.out.println(arrayList);
		
		boolean existe = arrayList.contains("Elemento C");
		
		if(existe) {
			System.out.println("Elemento encontrado no vetor");
		}
		else {
			System.out.println("Elemento não existe no vetor");
		}
		
		int posicao = arrayList.indexOf("Elemento C");
		if (posicao > -1) {
			System.out.println("Elemento encontrado na posição nº " + posicao);
		}
		else {
			System.out.println("Elemento não existe no vetor");
		}
		
		arrayList.remove(0);
		arrayList.remove("Elemento C");
		
		System.out.println(arrayList);
		
		System.out.println("Tamanho do vetor" + arrayList.size());
	}
}
