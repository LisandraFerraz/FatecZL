package teste;

import java.util.Arrays;

public class Teste {
	public static void main(String[] args) {

		ListaEncadeada lista = new ListaEncadeada();
		String vetor[] = new String[14];
		vetor[0] = "Aline";
		vetor[1] = "Amanda";
		vetor[2] = "Ana";
		vetor[3] = "Ananda";
		vetor[4] = "Bia";
		vetor[5] = "Beatriz";
		vetor[6] = "Carlos";
		vetor[7] = "Cesar";
		vetor[8] = "Cosmos";
		vetor[9] = "Carla";
		vetor[10] = "Debora";
		vetor[11] = "Zaza";
		vetor[12] = "Zoraide";
		vetor[13] = "Zuleika";
		Arrays.sort(vetor);

		for (int i = 0; i < vetor.length; i++) {
			
			if (lista.contem(vetor[i]) != true) {
				
				System.out.println("Nome: " + vetor[i] + "\n");

			} else {

				lista.adicionaUltimo("Nome: " + vetor[i] + "\n");
			}

		}

		System.out.println(lista);
		//System.out.println(lista.verifica);
	}
	
}
