
#include <stdio.h>
#include <conio.h>

void main(){
	
	float valor, final;
	char invest;
	
	printf("\n Digite a letra correspondente ao tipo de investimento que fara:");
	printf("\n *[P] POUPANÇA ================================================*");
	printf("\n *[F] FUNDO DE RENDA FIXA =====================================*");
	printf("\n *[C] CDB =====================================================*");
	printf("\n *[A] ACOES ===================================================*");
	printf("\n");
		invest = getche();
		
	printf("\n Digite o valor que deseja investir: ");
		scanf("\n %f",&valor);
		
	switch(invest){
		case 'p':
		case 'P':
			final = (float)(valor*1.03);
			printf("\n O valor após 30 dias com o investimento sera %f",final);
		break;
		
		case 'F':
		case 'f':
			final = (float)(valor*1.05);
			printf("\n O valor após 30 dias com o investimento sera %f",final);
		break;
		
		case 'C':
		case 'c':
			final = (float)(valor*1.06);
			printf("\n O valor após 30 dias com o investimento sera %f",final);
		break;
		
		case 'A':
		case 'a':
			final = (float)(valor*1.1);
			printf("\n O valor após 30 dias com o investimento sera %f",final);
			
		default:
			printf("\n Tipo de investimento invalido");
	}
	
	printf("\n");
	system("PAUSE");
	
}
