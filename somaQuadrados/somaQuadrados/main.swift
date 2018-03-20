//
//  main.swift
//  somaQuadrados
//
//  Created by Turma Manhã on 05/03/18.
//  Copyright © 2018 Turma Manhã. All rights reserved.
//

import Foundation

func quadradoSoma (_ x:Int,_ y:Int) -> Int{
    let resultado = x * x + y * y
    return(resultado)
}

print("Digite dois numero")
var numeroLido = readLine()!
var numeroLido02 = readLine()!
var condicao = false
while condicao == false{
    if let numeroOK = Int(numeroLido){
        if let numeroOK02 = Int(numeroLido02){
            let numero = numeroOK
            let numero02 = numeroOK02
            let resultado = quadradoSoma(numero, numero02)
            condicao = true
            print(resultado)
        }
    }
    else{
        print("Digite um numero")
        numeroLido = readLine()!
    }
}
