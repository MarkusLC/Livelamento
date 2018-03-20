//
//  main.swift
//  raiz
//
//  Created by Turma Manhã on 05/03/18.
//  Copyright © 2018 Turma Manhã. All rights reserved.
//

import Foundation

func raiz (_ x:Double) -> Double{
    let margem = 0.0002
    var r = 1.0
    var continuar = true
    while continuar == true {
        r = (r + x/r)/2
        if ((r * r < x - margem) || (r * r > x + margem)) {
            continuar = true
        } else {
            continuar = false
        }
    }
return(r)
}
print("digite um numero:")
var numeroLido = readLine()!
var condicao = false
while condicao == false {
    if let numeroOK = Double(numeroLido){
        var numero = numeroOK
        var resposta = raiz(numero)
        print(resposta)
        condicao = true
    }
    else{
        print("digite um numero:")
        numeroLido = readLine()!
    }
}
