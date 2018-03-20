//
//  main.swift
//  somaMatriz
//
//  Created by Turma Manhã on 05/03/18.
//  Copyright © 2018 Turma Manhã. All rights reserved.
//

import Foundation

func soma (_ x:[[Int]],_ y:[[Int]]) -> [[Int]]{
   var j = 0
    var i = 0
    var resultado:[[Int]] = []
    while  i < x.count  {
        resultado.append([])
        while j < x[i].count {
            resultado[i].append((x[i][j] + y[i][j]))
            j = j + 1
        }
        j = 0
        i = i + 1
    }
        return(resultado)
    }
    



let M1 = [[1,2,3],[2,2,1],[3,4,5]]
let M2 = [[1,2,3],[5,2,1],[1,1,1]]
var resultado = soma(M1, M2)
print(resultado)
