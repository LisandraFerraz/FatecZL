package RecursividadePesquisa_30_09;

public class Pesquisar2 {
	
	public static int pesquisaBinariaR(int v[], int x, int esq, int dir) {
		int meio = (esq + dir)/2;
		if(v[meio] == x) return meio; // encontrou
		if (esq >= dir) return -1; //nao encontrou
		if(x > v[meio])
			return pesquisaBinariaR(v, x, meio+1, dir);
		else
			return pesquisaBinariaR(v, x, esq, meio-1);
	}
	
	public static int pesquisaBinaria(int v[], int x) {
		final int NOT_FOUND = -1;
		int esq = 0;
		int dir = v.length;
		int meio;
		
		while(esq <= dir) {
			meio = (esq + dir)/2;
			if(x == v[meio]) return meio;
			if(x > v[meio])
				esq = meio+1;
			else
				dir = meio-1;
		}
		return NOT_FOUND;
	}
	
	public static void main(String[] args) {
		int v[]= {2,3,9,10,15,17,25,45,47,85};

		System.out.printf("\nO 2 existe no indice %d do vetor ", pesquisaBinaria(v, 2));
		System.out.printf("\nO 85 existe no indice %d do vetor ", pesquisaBinaria(v, 85));
		System.out.printf("\nO 50 existe no indice %d do vetor ", pesquisaBinaria(v, 50));
		System.out.printf("\nO 15 existe no indice %d do vetor ", pesquisaBinaria(v, 15));
		
		System.out.printf("\n");
		System.out.printf("\nChamada recursiva");
		System.out.printf("\nO 2 existe no indice %d do vetor", pesquisaBinariaR(v, 2, 0, 9));
		System.out.printf("\nO 85 existe no indice %d do vetor", pesquisaBinariaR(v, 85, 0, 9));
		System.out.printf("\nO 50 existe no indice %d do vetor", pesquisaBinariaR(v, 50, 0, 9));
		System.out.printf("\nO 15 existe no indice %d do vetor", pesquisaBinariaR(v, 15, 0, 9));
	}
}
