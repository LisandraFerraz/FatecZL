function soma(x){
    return new Promise((resolve, inject)=> {
        return setTimeout(()=> {
            resolve(x + 5000)

        }, 3000) 
    })
}

soma(450).then((resultado)=>{
    console.log(resultado)
})