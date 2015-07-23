//
//  main.swift
//  Juego Adivina (Console Version ver. 1.0)
//
//  Created by Alberto Pacheco on 20/07/15.
//  Copyright (c) 2015 Alberto Pacheco. All rights reserved.
//
// Ejercicio:
// 1) Modifica ciclo para ofrecer sólo 12 intentos (si se agotan termina e imprime valor oculto)
// 2) Sustituye los "if num" por una sentencia switch/cases, usando patrones
// 3) Si la entrada no es un número, dar oportunidad de repetir intento (no reducir intentos)

import Foundation

let intentos = 12
let oculto = randomNum()
loop:
    for var i=1; i<=intentos; i++ {
        let num = inputNum("\(i). Anota número")
        switch num {
        case nil:
            i--
            println("Escribiste un valor inválido, intenta de nuevo")
        case _ where num==oculto:
            println("Ganaste!")
            break loop
        case _ where num<oculto:
            println("Anota num MAYOR")
        case _ where num>oculto:
            println("Anota num menor")
        default:
            i--
            println("Escribiste un valor inválido, intenta de nuevo")
        }
        if i==intentos {
            println("Bye! el número era \(oculto)")
        }
}