//
//  main.swift
//  retangulo
//
//  Created by Turma Manhã on 05/03/18.
//  Copyright © 2018 Turma Manhã. All rights reserved.
//

import Foundation

struct retangulo {
    var lado1:Int
    var lado2:Int
    var centroX:Double
    var centroY:Double
    
    func area() -> Int {
        let resultado = lado1 * lado2
        return(resultado)
    }
    func iguais (_ lado03:Int,_ lado04:Int) -> Bool{
        let igualdade = lado1 - lado03 + lado2 - lado04
        
        if igualdade == 0{
            return (true)
        }
        return(false)
    }
    func distancia(_ pointX:Double,_ pointY:Double) -> Double{
        let resultado = sqrt(pow((pointX - centroX),2) + pow((pointY - centroY), 2))
        return (resultado)
    }
    init (lado1: intmax_t, lado2:Int, centroX:Double, centroY:Double){
        self.lado1 = lado1
        self.lado2 = lado2
        self.centroY = centroY
        self.centroX = centroX
    }
}
var re = retangulo(lado1: 0, lado2: 0, centroX: 0, centroY: 0)
print("digite os lados do retangulo:")
re.lado1 = Int(readLine()!)!
re.lado2 = Int(readLine()!)!
print("digite as coordenadas do centro do retantuglo:")
re.centroX = Double(readLine()!)!
re.centroY = Double(readLine()!)!
print("1-Area do retangulo\n2-Verificar igualdade\n3-Distancia ate um ponto")
var resposta = readLine()
if resposta == "1"{
    print(re.area())
}
if resposta == "2"{
    print("digite os lados do triangulo:")
    let lado1 = Int(readLine()!)!
    let lado2 = Int(readLine()!)!
    let igualdade = re.iguais(lado1, lado2)
    print(igualdade)
}
if resposta == "3"{
    print("digite as coordenadas do ponto:")
    let pontoX = Double(readLine()!)!
    let pontoY = Double(readLine()!)!
    let distancia = re.distancia(pontoX, pontoY)
    print(distancia)
}















