package TabelasHash_21_10;

import java.util.HashMap;

public class Teste1 {
	public static void main(String[] args) {
		int a = 10;
		int b = 20;
		int c = 30;

		HashMap<String, Integer> tabela = new HashMap<String, Integer>();
		tabela.put("A", 10);
		tabela.put("B", 20);
		tabela.put("C", 30);
		tabela.put("D", 40);

		System.out.println(tabela);

		System.out.println(tabela.containsValue(30));
		System.out.println(tabela.containsKey("B"));

		System.out.println(tabela.containsValue(50));
		System.out.println(tabela.containsKey("E"));

		System.out.println("tabela.replace(\"B,20);"+ tabela.replace("B", 50));
		System.out.println(tabela);
	}
}
