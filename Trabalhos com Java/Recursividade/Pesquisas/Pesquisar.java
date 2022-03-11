package RecursividadePesquisa_30_09;

public class Pesquisar {

	public static int pesquisa(int[] v, int x) {
		for(int i = 0; i < v.length; i++){
			if(v[i] == x)
				return i;
		}
		return -1;
	}
	
	public static int pesquisaR(int v[], int x, int tam) {
		final int NOT_FOUND = -1;
		if(tam<1) return NOT_FOUND;
		if(v[tam-1] == x) return tam-1;
		return pesquisaR(v, x, tam-1);
	}
	
	public static void main(String[] args) {
		int v[]= {15,2,47,9,85,45,10,3,17,25};
		System.out.printf("\nO 47 existe no indice %d do vetor",pesquisaR(v, 47, 10));
		System.out.printf("\nO 47 existe no indice %d do vetor",pesquisaR(v, 15, 10));
		System.out.printf("\nO 47 existe no indice %d do vetor",pesquisaR(v, 25, 10));
		System.out.printf("\nO 47 existe no indice %d do vetor",pesquisaR(v, 50, 10));
	}

}
