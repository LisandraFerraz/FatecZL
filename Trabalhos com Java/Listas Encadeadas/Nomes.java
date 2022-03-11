package teste;

public class Nomes {
	//private String nome;
	private Nomes proximo;
	private Object informacao;

	public Nomes(Nomes proximo, Object informacao){
		this.proximo = proximo;
		this.informacao = informacao;
	}

	public Nomes(Object informacao){
		this.informacao = informacao;
	}

	public Nomes getProximo() {
		return proximo;
	}

	public void setProximo(Nomes proximo) {
		this.proximo = proximo;
	}

	public Object getInformacao() {
		return informacao;
	}

	public void setInformacao(Object informacao) {
		this.informacao = informacao;
	}
	}

