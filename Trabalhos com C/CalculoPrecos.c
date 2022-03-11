
#include <stdio.h>
#include <conio.h>

void main(){

	int cod, quant;
	float total;
	
	printf("Digite o codigo do produto: \n");
		scanf("%d",&cod);
	printf("Digite a quantidade de produto que deseja comprar: \n");
		scanf("%d",&quant);
		
	switch(cod){
		case 1 ... 5:
			total = (float)(quant*10);
			printf("O valor unitario do produto e: R$10,00");
			printf("\n O valor total da sua compra sera R$%f",total,",00");
		break;
		
		case 6:
			total = (float)(quant*50);
			printf("O valor unitario do produto e: R$50,00");
			printf("\n O valor total da sua compra sera R$%f",total,",00");			
		break;
			
		case 8 ... 15:
			total = (float)(quant*50);
			printf("O valor unitario do produto e: R$50,00");
			printf("\n O valor total da sua compra sera R$%f",total,",00");	
		break;
		
		case 7:
			total = (float)(quant*15);
			printf("O valor unitario do produto é R$15,00");
			printf("\n O valor total da sua compra sera R$%f",total,",00");
		break;
		
		case 16 ... 17:
			total = (float)(quant*25);
			printf("O valor unitario do produto e R$25,00");
			printf("\n O valor total da sua compra sera R$%f",total,",00");	
		break;	
			
		default:
			printf("Codigo invalido");
	}	
	
	printf("\n");
	system("PAUSE");

}

