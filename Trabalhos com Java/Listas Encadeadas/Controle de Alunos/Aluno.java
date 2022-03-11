package Lista_Encadeada_12_08;

public class Aluno {
	private String nome;
	private int ra;
	private Aluno proxima;
	
	//metodo construtor da classe aluno
	//o que será necessario preencher para inserir na lista 
	public Aluno(String nome, int ra) {
		this.nome = nome;
		this.ra = ra;
	}
	
	public String getNome() {
		return nome;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}

	public int getRa() {
		return ra;
	}

	public void setRa(int ra) {
		this.ra = ra;
	}

	public Aluno getProxima() {
		return proxima;
	}

	public void setProxima(Aluno proxima) {
		this.proxima = proxima;
	}
}
