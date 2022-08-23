function soma(x){
    return new Promise((resolve, reject)=> {
        if(Number(x)== NaN || Number(x)== undefined || typeof x != 'number'){
            reject('Valor não aceito. Não é um número ou recebeu um valor nulo/inválido.')
        }
        setTimeout(()=> {
            resolve(x + 5000)

        }, 3000) 
    })
}

async function main(){
    try {
        const res = await soma(500)
        console.log(`Resultado: ${res}`)
    } catch (error) {
        console.log(`Erro. ${error}`)
    }
}