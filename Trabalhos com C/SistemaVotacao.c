
#include <stdio.h>
#include <conio.h>
#include <string.h>
#include <locale.h>

void main() {
    setlocale(LC_ALL,"portuguese");

    int totalEleitores, totalEleitoresP = 0;
    char prefeitoMaisVotado[25] = "", vereadorMaisVotado[25] = "";
    int qtdVotosPrefeito = 0, qtdVotosVereador = 0;
    int pdbP=0, pdbV= 0, psbP =0 , psbV= 0 , pdbTotal = 0, psbTotal = 0;
    int numZonaEleitoral, numSecao, idUrna, votoPrefeito, votoVereador;
    int i, resposta;
    //variaveis de voto para partidos, prefeito, vereador, branco, nulo e candidato ausente
    int c1 = 0, c2 = 0, c3 = 0, c4 = 0, v1 = 0, v2 = 0, v3 = 0, v4 = 0,
    vbp = 0, vnp = 0, vbv = 0, vnv = 0, ausentes = 0; 

    printf("Seja bem-vindo(a) as eleicoes 2021.\n");
    // leitura do numero da zona eleitoral
    printf("\nPrimeiro, nos informe o numero da sua Zona eleitoral\n");
        scanf("%d", &numZonaEleitoral);

    // leitura do numero da secao
    printf("\nAgora, o numero da sua secao.\n");
        scanf("%d", &numSecao);

    printf ("\nInforme quantos eleitores vao votar.\n");
		scanf("%d",&totalEleitores);     
        
    printf("\nPor ultimo, o codigo de identificacao da Urna Eletronica.\n");
        scanf("%d", &idUrna);

    // laco da urna de acordo com o totalEleitores
    for (i = 1; i <= totalEleitores; i++)
    {
        printf("\n O eleitor nº %d compareceu a zona eleitoral?[1]Sim ou [2]Não\n", i);
        scanf("%d", &resposta);
        switch (resposta)
        {
            case 1: 
            totalEleitoresP++;
            printf("\nEleitor nº %d realize sua votacao digitando o código do candidato\nSuas opcoes de voto para PREFEITO sao:", i);
            printf("\n[1] - CANDIDATO 1 - PDB \n[2] - CANDIDATO 2 - PDB \n[3] - CANDIDATO 3 - PSB \n[4] - CANDIDATO 4 - PSB "
                "\n[5] - VOTAR EM BRANCO \n[6] - VOTAR NULO\n");
            scanf("%d", &votoPrefeito);

        printf("\nDigite seu voto para VEREADOR. Suas opcoes de voto para VEREADOR sao:"
                "\n[1] - VEREADOR 1 - PDB \n[2] - VEREADOR 2 - PDB \n[3] - VEREADOR 3 - PSB \n[4] - VEREADOR 4 - PSB"
                "\n[5] - VOTAR EM BRANCO \n[6] - VOTAR NULO \n");
            scanf("%d", &votoVereador);
        // verificador de perguntas para soma de votos - prefeito
            switch (votoPrefeito)
            {
                case 1:
                    printf("\nEleitor %d",i);
                    printf("\nVoto ao Candidato a Prefeitura..: C1");
                    //c1++ e pdb++ soma +1 voto para o candidato 1 e o partido pdb
                    c1++;
                    pdbP++;
                    pdbTotal++;
                break;
                
                case 2:
                    printf("\nEleitor %d",i);
                    printf("\nVoto ao Candidato a Prefeitura..: C2");
                    //c1++ e pdb++ soma +1 voto para o candidato 1 e o partido pdb
                    c2++;
                    pdbP++;
                    pdbTotal++;
                break;

                case 3:
                    printf("\nEleitor %d",i);
                    printf("\nVoto ao Candidato a Prefeitura..: C3");
                    //c3++ e psb++ soma +1 voto para o candidato 3 e o partido psb
                    c3++;
                    psbP++;
                    psbTotal++;
                break;

                case 4:
                    printf("\nEleitor %d",i);
                    printf("\nVoto ao Candidato a Prefeitura..: C4");
                    //c3++ e psb++ soma +1 voto para o candidato 3 e o partido psb
                    c4++;
                    psbP++;
                    psbTotal++;
                break;

                case 5:
                    printf("\nEleitor %d",i);
                    printf("\nVoce votou em branco para prefeito.");
                    //vbp++ soma +1 voto para o voto branco
                    vbp++;
                break;

                case 6:
                    printf("\nEleitor %d",i);
                    printf("\nVoce anulou seu voto para prefeito.");
                    //vnp++ soma +1 voto para o voto nulo
                    vnp++;
                break;

                default:
                    printf("\nResposta inválida");
                
                    // system("pause");
                    // system("cls");
            }
            
                       // verificador de perguntas para soma de votos - vereador
            switch (votoVereador)
            {
                /*nao ha print de eleitor nesse 2 switch para que para que seja possivel
                juntar o print de prefeito com a de vereador*/
                case 1:
                    printf("\nVoto ao Candidato a Vereador....: V1");
                    //c1++ e pdb++ soma +1 voto para o Vereador 1 e o partido pdb
                    v1++;
                    pdbV++;
                    pdbTotal++;
                    break;
                
                case 2:
                    printf("\nVoto ao Candidato a Vereador....: V2\n");
                    //c1++ e pdb++ soma +1 voto para o Vereador 1 e o partido pdb
                    v2++;
                    pdbV++;
                    pdbTotal++;
                break;

                case 3:
                    printf("\nVoto ao Candidato a Vereador....: V3\n");
                    //c3++ e psb++ soma +1 voto para o Vereador 3 e o partido psb
                    v3++;
                    psbV++;
                    psbTotal++;
                break;

                case 4:
                    printf("\nVoto ao Candidato a Vereador....: V4\n");
                    //c4++ soma +1 voto para o Vereador 4 e o partido psb
                    v4++;
                    psbV++;
                    psbTotal++;
                break;

                case 5:
                    printf("\nVoce votou em branco para vereador.\n");
                    //vbv++ soma +1 voto para o voto branco
                    vbv++;
                break;

                case 6:
                    printf("\nVoce anulou seu voto para vereador.\n");
                    //vnv++ soma +1 voto para o voto nulo
                    vnv++;
                break;

                default:
                    printf("\nCódigo inválido\n");
            }
        break;
        case 2 : 
        ausentes++;
        printf("Eleitor %d ausente, vamos para o próximo eleitor.\n", i);
        break;
        default:
        printf("Resposta inválida\n");
        }
        
             
    }

    printf("\n ENCERRAMENTO DAS ELEICOES \n");

 // verificacao do prefeito mais votado
    // strcpy ï¿½ uma funï¿½ï¿½o da lib string.h para atribuir valor a var tipo string
    if (c1 > c2 && c1 > c3 && c1 > c4) {
        qtdVotosPrefeito = c1;
        strcpy (prefeitoMaisVotado, "C1" );
    }
    else if (c2 > c1 && c2 > c3 && c2 > c4) {
        qtdVotosPrefeito = c2;
        strcpy (prefeitoMaisVotado, "C2" );
    }
    else if (c3 > c1 && c3 > c2 && c3 > c4){
        qtdVotosPrefeito = c3;
        strcpy (prefeitoMaisVotado, "C3" );
    }
    else if (c4 > c1 && c4 > c2 && c4 > c3) {
        qtdVotosPrefeito = c4;
        strcpy (prefeitoMaisVotado, "C4" );
    }
    else {
        qtdVotosPrefeito = 0;
        strcpy (prefeitoMaisVotado, "Nao houve prefeito votado/Todos empataram.");
    }

    // verificacao do vereador mais votado
    if (v1 > v2 && v1 > v3 && v1 > v4) {
        qtdVotosVereador = v1;
        strcpy (vereadorMaisVotado, "V1" );
    }
    else if (v2 > v1 && v2 > v3 && v2 > v4) {
        qtdVotosVereador = v2;
        strcpy (vereadorMaisVotado, "V2" );
    }
    else if (v3 > v1 && v3 > v2 && v3 > v4){
        qtdVotosVereador = v3;
        strcpy (vereadorMaisVotado, "V3" );
    }
    else if (v4 > v1 && v4 > v2 && v4 > v3) {
        qtdVotosVereador = v4;
        strcpy (vereadorMaisVotado, "V4" );
    }
    else {
        qtdVotosVereador = 0;
        strcpy (vereadorMaisVotado, "Nao houve vereador votado/Todos empataram.");
    }
    
    psbTotal = psbV+psbP;
    pdbTotal = pdbV+pdbP;
    //Divulgacao dos resultados
    // PARTIDOS
    printf("\n--- DIVULGAÇÃO DOS RESULTADOS: -------------\n"
            "\n-------------------------------------------\n"
            "\n-IDENTIFICAÇÃO DA URNA APURADA-------------\n"
            "\n-Zona Eleitoral de nº %d, Seção %d \n"
            "\n-Total de Eleitores: %d \n"
            "\n-Eleitores Presentes: %d \n"
            "\n-Eleitores Ausentes: %d \n"
            "\n-------------------------------------------\n"
            "\n------------Votos por partido--------------\n"
            "\nNumero de votos para o Partido PDB: %d"
            "\nNumero de votos para o Partido PSB: %d"
            ,numZonaEleitoral, numSecao, totalEleitores, 
            totalEleitoresP, ausentes, pdbTotal,psbTotal);

    // PREFEITOS
    printf("\n\n- Votos por Candidatos a Prefeito -\n"
            "\nNumero de votos para o Candidato a Prefeito C1: %d"
            "\nNumero de votos para o Candidato a Prefeito C2: %d"
            "\nNumero de votos para o Candidato a Prefeito C3: %d"
            "\nNumero de votos para o Candidato a Prefeito C4: %d"
            "\nNumero de votos brancos: %d"
            "\nNumero de votos nulos: %d", c1, c2, c3, c4, vbp, vnp);

    // VEREADORES
    printf("\n\n- Votos por Candidatos a Vereador -\n"
            "\nNumero de votos para o Candidato a Vereador V1: %d"
            "\nNumero de votos para o Candidato a Vereador V2: %d"
            "\nNumero de votos para o Candidato a Vereador V3: %d"
            "\nNumero de votos para o Candidato a Vereador V4: %d"
            "\nNumero de votos brancos: %d"
            "\nNumero de votos nulos: %d",v1, v2, v3, v4, vnv, vbv);

    // CANDIDATOS MAIS VOTADOS
    printf("\n\n^^ Candidatos mais votados ^^\n"
            "\nCandidato a Prefeito mais votado: %s - Qtd. de votos: %d"
            "\nCandidato a Vereador mais votado: %s - Qtd. de votos: %d\n",prefeitoMaisVotado, qtdVotosPrefeito, vereadorMaisVotado, qtdVotosVereador );
    
	system("pause"); 
	system("cls");       
}
