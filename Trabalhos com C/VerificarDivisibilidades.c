#include <stdio.h>
#include<stdbool.h>
#include <math.h>
#include <conio.h>

#define color_red "\e[1;31m	"
#define color_green "\e[1;32m"
#define color_blue "\e[0;34m"
#define color_yellow "\e[0;33m"
#define color_u_cyan "\e[4;36m"
#define color_u_blue "\e[4;34m"
#define NONE "\033[0m"

bool divisibilidade2(int num){
    int unidade = num % 10;
    int divisivel = 0;
    if (unidade == 0 || unidade == 2 || unidade == 4 || unidade == 6 || unidade == 8) {
        divisivel = 1;
    }

    return divisivel;
}

bool divisibilidade3(int num){
    int total = 0;
    int algarismo;
    int resultado = false;

    while (num>0){
        algarismo = num % 10;
        total = total + algarismo;
        num = num/10;

    if ((num < 1 )&&(total > 10)){
		num = total;
		total = 0;
    }
    }
	return(total == 3 || total == 6 || total == 9);
}

bool divisibilidade4(int num){
	bool e_divisivel2;
	int divisivel = 0;

	e_divisivel2 = divisibilidade2(num);

	if (e_divisivel2){
		divisivel = 1;
	}

	return divisivel;
}

bool divisibilidade5(int num){
	int divisivel = 0;
	int aux;

	aux = num % 10;

	if (aux == 0 || aux == 5){
		divisivel = 1;
	}
	return divisivel;
}

bool divisibilidade6 (int num){
    bool e_divisivel2, e_divisivel3, divisivel;
    
    e_divisivel2 = divisibilidade2(num);
    e_divisivel3 = divisibilidade3(num);
    
     if (e_divisivel2 && e_divisivel3) {
       divisivel = true;
    } else {
       divisivel = false;
    }
	return divisivel;
}

bool divisibilidade7 (int num){
	int aux;
	bool check;
	
	aux = num%10;
	
	num = (num - aux)/10;
	aux = aux * 2;
	
	num = fabs(num - aux);
	
	do{
		aux = num%10;
	
		num = (num - aux)/10;
		aux = aux * 2;
	
		num = fabs(num - aux);
	}while (num > 70);
	
	int aju = 0;
	while (aju <= 10){
		if ( num == 7*aju){
			return true;
		}
		if ((aju == 10)&&(num != 7*aju)){
			return false;	
		}
		aju++;
		
	}

}

bool divisibilidade8 (int num){
bool check1, check2, check3, divisivel;
	int aux;
	
	check1 = divisibilidade2 (num);
	if (check1 == true){
		aux = num/2;
		check2 = divisibilidade2 (aux);
		if (check2 == true){
			aux = aux/2;
			check3 = divisibilidade2 (aux);
			if (check3 == true){
				divisivel = true;
				}
				else{
					divisivel = false;
				}
			
		}
		else{
		 divisivel = false;
		}
		
	}
	else{
		divisivel = false;
	}
	
	return divisivel;
}

bool divisibilidade9 (int num){
	bool check1, check2, divisivel;
	int aux;
	
	check1 = divisibilidade3 (num);
	if (check1 == true){
		aux = num/3;
		check2 = divisibilidade3 (num);
		if (check2 == true){
			divisivel =  true;
		}
		else{
			divisivel = false;
		}
		
	}
	else{
		divisivel = false;
	}
	return divisivel;
}

bool divisibilidade10 (int num){
	int aux;
	bool resultado = 0;

	aux = num%10;
	
	if (aux == 0){
		resultado = 1;
	}

	return resultado;
}

bool divisibilidade11 (int num){
    // int[] arrayDigito = new int[20];
    int arrayDigito [20];
    int divisivel = 0;
    int nRepart = 0, nImpar = 0, nPar = 0, resultado = 0;

// i< (trunc(log10(num)) +1)
    for(int i = 0; i < 19; i++){
        while (num > 0)
        {
            nRepart = num % 10;
            arrayDigito[i] = nRepart;
            num /= 10;
        }

            if (i % 2 == 0){
                nImpar += arrayDigito[i];
            }
            else {
                nPar+= arrayDigito[i];
    }
        
        resultado = nImpar - nPar;
        printf("{%d} - {%d} =  {%d}\n", nImpar, nPar, resultado);
        if (resultado == 0 || resultado == 11){
            divisivel = 1;
        }
    }

    return divisivel;

}

bool divisibilidade12(int num){
    bool e_divisivel3, e_divisivel4;
    int divisivel = 0;

    e_divisivel3 = divisibilidade3(num);
    e_divisivel4 = divisibilidade4(num);

    if (e_divisivel3 && e_divisivel4){
        divisivel = 1;
    }

    return divisivel;
}

bool divisibilidade15(int num){
	bool e_divisivel3, e_divisivel5;
	int divisivel = 0;

	e_divisivel3 = divisibilidade3(num);
	e_divisivel5 = divisibilidade5(num);

	if (e_divisivel3 && e_divisivel5){
		divisivel = 1;
	}
	return divisivel;
}

bool divisibilidade25(int num){
	bool e_divisivel5;
	int divisivel = 0;

	e_divisivel5 = divisibilidade5(num);
	if (e_divisivel5){
			divisivel = 1;
	}

	return divisivel;
}

bool testeDivisibilidade(int x, int y){
	bool teste;
	switch (y){
		case 2:
			teste = divisibilidade2 (x);
		break;
		case 3:
			teste = divisibilidade3 (x);
		break;	
		case 6:
			teste = divisibilidade6 (x);
		break;
		case 7:
			teste = divisibilidade7 (x);
		break;
		case 8:
			teste = divisibilidade8 (x);
		break;
		case 9:
			teste = divisibilidade9 (x);
		break;
		case 10:
			teste = divisibilidade10 (x);
		break;
		default:
		if(x%y==0)
			teste = true;
		else
			teste = false;
		break;
	}
	return teste;
	
	
}

void imprimirObjetivoLab(){
    printf(
        "%sPrograma TESTE DE DIVISIBILIDADE%s\n"
        "\n"
        "O programa tem por objetivo informar se um determinado\n"
        "numero eh ou nao divisivel por outro.\n"
        "\n"
        "Os testes de divisibilidade sao validos para os seguintes\n"
        "divisores:\n%s2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 15 e 25.%s\n"
        "\n"
		,color_u_cyan, NONE, color_u_blue, NONE
    );
}

void main(){

	int x, y;
	int divisao;

	imprimirObjetivoLab();
	//entrada
	printf("Insira o valor do Dividendo(X): " );
	scanf("%d", &x);

	printf("Insira o valor do divisor(Y):");
	scanf("%d", &y);
	switch(y){
		
		case 2 ... 15: 
			divisao = x / y;
			printf("\n%sA divisao de %d por %d eh %d%s", color_yellow,x, y, divisao, NONE);
			break;
			case 25: 
			divisao = x / y;
			printf("\n%sA divisao de %d por %d eh %d%s", color_yellow,x, y, divisao, NONE);
			break;
			default:
				printf("\nDivisor invalido! Favor informar novos valores");
			break;
	}

		
	if(testeDivisibilidade(x,y))
			printf("\n%s%d eh divisivel por %d%s",color_green, x, y, NONE);
		else
			printf("\n%s%d NAO eh divisivel por %d%s",color_red, x, y, NONE);
}


