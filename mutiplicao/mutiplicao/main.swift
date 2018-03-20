//
//  main.swift
//  mutiplicao
//
//  Created by Turma Manhã on 05/03/18.
//  Copyright © 2018 Turma Manhã. All rights reserved.
//

import Foundation

func multiplica (_ x:[[Int]], _ y:[[Int]]) -> [[Int]]{
    var i = 0
    var j = 0
    var soma = 0
    var resultado:[[Int]] = []
    while  i < x.count  {
        resultado.append([])
        while j < x[i].count {
            soma = soma + ((x[i][j] * y[j][i]))
            j = j + 1
        }
        resultado[i].append(soma)
        j = 0
        i = i + 1
    }
    return(resultado)
}

let M1 = [[1,2,3],[2,2,1],[3,4,5]]
let M2 = [[1,2,3],[5,2,1],[1,1,1]]
var resultado = multiplica(M1, M2)
print(resultado)
