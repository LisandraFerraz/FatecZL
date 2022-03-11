package teste;

public class ListaEncadeada {
private Nomes cabeca;

boolean verifica = false;

public void adicionaUltimo(String informacao) {
	Nomes novoNome = new Nomes(null, informacao);

	if (cabeca == null) {
		cabeca = novoNome;
	} else {
		Nomes atual = cabeca;

		while (atual.getProximo() != null) {
			atual = atual.getProximo();
		}
		atual.setProximo(novoNome);
	}
}

public boolean contem(String informacao) {
	Nomes nome = new Nomes(null, informacao);

	while (nome != null) {
		if (nome.getInformacao().equals(informacao)) {
			return true;
		}
		nome = nome.getProximo();
	}
	return false;
}

public String toString() {

	if (this.cabeca == null) {
		return "[]";
	}
	StringBuilder builder = new StringBuilder("[");

	Nomes atual = cabeca;

	while (atual != null) {

		builder.append(atual.getInformacao());
		if (atual.getProximo() != null)
			builder.append(", ");
		atual = atual.getProximo();
	}

	builder.append("]");

	return builder.toString();
}
}