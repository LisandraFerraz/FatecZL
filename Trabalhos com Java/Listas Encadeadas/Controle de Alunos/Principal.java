package Lista_Encadeada_12_08;

public class Principal {

	public static void main(String[] args) {
		ListaEncadeada lista_de_alunos = new ListaEncadeada();
		
		
		Aluno pedro = new Aluno("Pedro", 123);
		Aluno maria = new Aluno("Maria", 124);
		Aluno ana = new Aluno("Ana", 125);
		Aluno joao = new Aluno("João", 126);
	
		lista_de_alunos.adicionarElementoNoFimDaLista(pedro);
		lista_de_alunos.adicionarElementoNoFimDaLista(maria);
		lista_de_alunos.adicionarElementoNoFimDaLista(joao);
		
		lista_de_alunos.adicionarElementoNoInicioDaLista(ana);
		
		lista_de_alunos.removerAlunoDaLista(maria);
		lista_de_alunos.listarAlunosDaLista();
		
		

	}
}
