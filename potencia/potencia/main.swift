//
//  main.swift
//  potencia
//
//  Created by Turma Manhã on 05/03/18.
//  Copyright © 2018 Turma Manhã. All rights reserved.
//

import Foundation
func potencias (_ x:Int,_ y:Int ) -> Int {
    var resultado = 1
    var i = 0
    while i < y {
        resultado = resultado * x
        i = i + 1
    }
    return resultado
}
print("digite um numero")
var nuemroLido = readLine()!
var condicao = false
while condicao == false {
    if let numeroOk = Int (nuemroLido){
        print("digite a potencia:")
        var potenciaLida = readLine()!
        if let potenciaOK = Int (potenciaLida){
            let numero = numeroOk
            let potencia = potenciaOK
            let resultado = potencias(numero,potencia)
            print(resultado)
            condicao = true
        }
    }
}
