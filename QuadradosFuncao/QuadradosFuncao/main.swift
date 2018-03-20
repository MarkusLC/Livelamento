//
//  main.swift
//  QuadradosFuncao
//
//  Created by Turma Manhã on 05/03/18.
//  Copyright © 2018 Turma Manhã. All rights reserved.
//

import Foundation

func quadrado (_ x:Int) -> Int{
    let resultado = x * x
    return(resultado)
}

print("Digite um numero")
var numeroLido = readLine()!
var condicao = false
while condicao == false{
    if let numeroOK = Int(numeroLido){
        let numero = numeroOK
        let resultado = quadrado(numero)
        condicao = true
        print(resultado)
    }
    else{
        print("Digite um numero")
        numeroLido = readLine()!
    }
}
