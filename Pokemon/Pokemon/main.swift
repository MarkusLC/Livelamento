//
//  main.swift
//  Pokemon
//
//  Created by Turma Manhã on 08/03/18.
//  Copyright © 2018 Turma Manhã. All rights reserved.
//

import Foundation
var acao = 0
var jogador = ""

struct ataque {
    var ataque:String
    var dano:Int
}
struct pokemon {
    var nome:String
    var tipo:String
    var pontosHP:Int
    var pontosHPtemp:Int
    var ataques:[ataque]
    func verificar(){
        print(tipo)
    }
    mutating func serAtacado(_ dano:Int){
        self.pontosHPtemp = self.pontosHPtemp - dano
        print("restam \(pontosHPtemp) de vida ")
    }
    init(nome:String, tipo:String, pontosHP:Int,pontosHPtemp:Int,ataques:[ataque]) {
        self.nome = nome
        self.tipo = tipo
        self.pontosHP = pontosHP
        self.pontosHPtemp = pontosHP
        self.ataques = ataques
        
    }
}
var listaPokemons:[String:pokemon] = [:]
var listaPokemonsEnemies:[pokemon] = []
func acoes (){
    print("\n O ques fazer?")
    print("1-Atacar")
    print("2-Analizar Pokemon")
    acao = Int(readLine()!)!
}
func wildPokemon() -> pokemon {
    print("A WILD POKEMON!")
    let randon = Int(arc4random_uniform(UInt32(listaPokemonsEnemies.count)))
    print(listaPokemonsEnemies[randon].nome)
    return listaPokemonsEnemies[randon]
}

var listaAtaques = [ataque(ataque: "Teste", dano: 5), ataque(ataque:"Teste", dano: 66)]
//Pokemon
var bulbasauro = pokemon(nome: "Bulbasauro", tipo: "Planta", pontosHP: 45, pontosHPtemp:45 , ataques: [] )
var psyduck = pokemon(nome: "Psyduck", tipo:"psiquico", pontosHP: 100, pontosHPtemp: 20, ataques: [])
//Adicionando pokemon
listaPokemons["Bulbasauro"] = bulbasauro;listaPokemonsEnemies.append(bulbasauro)
listaPokemons["Psyduck"] = psyduck;listaPokemonsEnemies.append(psyduck)
print("escolha seu pokemon:\n1-Bulbasauro\n2-Psyduck")
var escolha = readLine()
if escolha == "1"{
    jogador = "Bulbasauro"
}
if escolha == "2"{
    jogador = "Psyduck"
    
}
func chamadaAtaques (){
    print("Escolha um ataque")
    var j = 1
    for i in listaPokemons[jogador]!.ataques{
        print("\(j)-Nome:\(i.ataque)\nDano:\(i.dano)")
        j += 1
    }
}

func analizar(){
    let enimei = wildPokemon()
    print("tipo:\(enimei.tipo)\nHp:\(enimei.pontosHP)")
}
print("\(listaPokemons[jogador]!.nome)\n HP:\(listaPokemons[jogador]!.pontosHP)")
print("Agora que escolheu seu pokemon,escolha seu primeiro ataque:\n1-Chicote")
escolha = readLine()
if escolha == "1"{
    listaPokemons[jogador]!.ataques.append(ataque(ataque: "Chicote", dano: 45))
}

var enimei = wildPokemon()
while listaPokemons[jogador]!.pontosHPtemp != 0{
acoes()
if acao == 1 {
    chamadaAtaques()
}
if acao == 2{
    analizar()
}
let escolhaAtaque = readLine()
if escolhaAtaque == "1"{
    acao = 0
}
enimei.serAtacado(listaPokemons[jogador]!.ataques[acao].dano)
}






























