//
//  main.swift
//  Protocolo
//
//  Created by Turma Manhã on 08/03/18.
//  Copyright © 2018 Turma Manhã. All rights reserved.
//

import Foundation


protocol Forma {
    func area() -> Double
    func igual (a outro:Forma) -> Bool
   // func incluiPonto(_ ponto:Ponto) -> Bool
    
}
struct Ponto:Forma {
    var x:Double
    var y:Double
    
    func area() -> Double {
        return 0
    }
    func igual(a outro:Forma) -> Bool {
        if outro is Ponto{
            let pt = outro as! Ponto
            return self.x == pt.x && self.y == pt.y
        }
        else{
            return(false)
        }
    }
    func incluiPonto(_ ponto:Ponto) -> Bool {
        return(false)
    }
}
struct Retangulo:Forma {
    var altura:Double
    var largura:Double
    var centro:Ponto
    
    func area() -> Double {
        return altura * largura
    }
    func igual(a outra:Forma) -> Bool {
        if outra is Retangulo{
            let teste = outra as! Retangulo
            return self.altura == teste.altura
                && self.largura == teste.largura
                && self.centro.igual(a:teste.centro)
        }
        else{
            return(false)
        }
    }
    func incluiPonto(_ ponto:Ponto) -> Bool {
        let distanciaX = abs(ponto.x - centro.x)
        let distanciaY = abs(ponto.y - centro.y)
        if distanciaX <= (largura/2) && distanciaY <= (altura/2){
                return(true)
        }
        return(false)
        
    }
    
    
}
struct Circulo:Forma {
    var raio:Double
    var centro:Ponto
    
    func area() -> Double {
        return raio*raio*Double.pi
    }
    func igual(a outra:Forma) -> Bool {
        if outra is Circulo{
        let teste = outra as!Circulo
        
        return self.raio == teste.raio
            && self.centro.igual(a:teste.centro)
    
        }
        else{
            return(false)
        }
    }
    func incluiPonto(_ ponto:Ponto) -> Bool {
        let distancia =  sqrt(pow((ponto.x - centro.x), 2) + pow((ponto.y - centro.y), 2))
        if distancia <= raio{
            return(true)
        }
    }
}

var pt1 = Ponto(x:14.0, y:27.0)
var pt2 = Ponto(x:4.0, y:9.0)
var pt3 = Ponto(x:27.0, y:-5.3)
var circ = Circulo(raio:10, centro:pt1)
var ret = Retangulo(altura:7, largura:9, centro:pt2)
var formas:[Forma] = [ret, circ, pt3]

var areaTotal = 0.0
for f in formas {
    areaTotal += f.area()
    
}
print(areaTotal)











