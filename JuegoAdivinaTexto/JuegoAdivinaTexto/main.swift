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

var final = false
var oculto = randomNum()
var num: Int!
do {
    num = inputNum("Anota número")
    if num==nil {
        println("Escribiste un valor inválido, intenta de nuevo")
    } else if num==oculto {
        final = true
    } else if num<oculto {
        println("Anota num MAYOR")
    } else {
        println("Anota num menor")
    }
} while !final
if final {
    println("Ganaste!")
} else {
    println("Bye! el número era \(oculto)")
}