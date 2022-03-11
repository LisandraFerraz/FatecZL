
#include <stdio.h>
#include <conio.h>

void main(){
	
	char figura;
	float lado, base, altura, base_maior, base_menor, area;

	//entrada
	printf("Digite a figura que deseja saber a area: \n");
	printf("\n [Q]quadrado \n [T]triangulo \n [R]retangulo \n [P]trapezio \n");
		figura = getche();
	
	switch(figura){
		case 'q':
		case 'Q':
			printf("\n Digite um lado: \n");
				scanf("%f",&lado);
				
				area = (float)(lado * lado);
				printf("A area do quadrado e = %f",area);
			break;
		
		case 't':
		case 'T':
			printf("\n Digite a base: \n");
				scanf("%f",&base);
				
			printf("\n Digite a altura: \n");
				scanf("%f",&altura);
				
				area = (float)(base*altura)/2;
				printf("A area do triangulo e = %f",area);
			break;
			
		case 'r':
		case 'R':
			printf("\n Digite a base: \n");
				scanf("%f",&base);
				
			printf("\n Digite a altura: \n");
				scanf("%f",&altura);
						
				area = (float)(base*altura);
				printf("A area do retangulo e = %f",area);
			break;
			
		case 'p':
		case 'P':
			printf("\n Digite a altura: \n");
				scanf("%f",&altura);
				
			printf("\n Digite a base maior: \n");
				scanf("%f",&base_maior);	
				
			printf("\n Digite a base menor: \n");
				scanf("%f",&base_menor);
				
				area = (float)(((base_maior + base_menor)*altura)/2);
				printf("A area do trapézio e = %f",area);	
			break;
				
		default:
			printf("\n Figura invalida");
		
	}
	
	printf("\n");
	system("PAUSE");

}
