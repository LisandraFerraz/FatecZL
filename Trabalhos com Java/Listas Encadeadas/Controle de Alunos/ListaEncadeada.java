package Lista_Encadeada_12_08;

public class ListaEncadeada {
	private Aluno cabeca = null;
	private Aluno cauda = null;
	private int totalDeAlunos = 0;
	
	//add no fim da lista
	public void adicionarElementoNoFimDaLista(Aluno aluno) {
		if (cabeca == null) {
			//caso a lista esteja vazia, o inicio (cabeca) e
			//fim (cauda) receberão um valor. (lista contém 1 item)
			cabeca = aluno;
			cauda = aluno;
		}
		//se o fim da lista for nulo, ele recebe um novo valor
		else if (cauda.getProxima() == null) {
			cauda.setProxima(aluno);
			cauda = aluno;
		}
		//aumento o numero de items da lista depois de adicionar
		totalDeAlunos++;
	}
	
	//add no inicio da lista
	public void adicionarElementoNoInicioDaLista(Aluno aluno) {
		aluno.setProxima(cabeca);
		cabeca = aluno;
	}
	
	//add no meio da lista
	public void adicionarElementoNoMeioDaLista(int posicao, Aluno aluno) {
		Aluno aux = this.cabeca;
		for(int i = 0; i <=posicao; i++) {
			if(i >= posicao) {
				aluno.setProxima(aux.getProxima());
				aux.setProxima(aluno);
			}
			aux = aux.getProxima();
		}
		totalDeAlunos++;
	}
	public void listarAlunosDaLista() {
		Aluno aux = cabeca;
		while (aux!= null) {
			System.out.println(aux.getNome());
			aux = aux.getProxima();
		}
	}
	
	//remover pelo nome
	public void removerAlunoDaLista(Aluno aluno) {
		Aluno aux = this.cabeca;
		while (aux != null) {
			if (aux.getProxima() == aluno) {
				Aluno proximo = aux.getProxima();
				aux.setProxima(proximo.getProxima());	
			}
			else if (aux == aluno) {
				cabeca = aluno.getProxima();
			}
			aux = aux.getProxima();
		}
	}
}
