//
//  LibreriaDelJuego.swift
//  Funciones del JuegoAdivinaTexto (Swift 1.2)
//
//  Created by Alberto Pacheco on 23/07/15.
//  Copyright (c) 2015 Alberto Pacheco. All rights reserved.
//

import Foundation

// Returns an integer random number inside a closed interval (default=1...1000)
func randomNum(_ range: ClosedInterval<Int> = 1...1_000) -> Int
{
    return Int(arc4random_uniform(UInt32(range.end + 1))) + range.start
}

// Read a string from keyboard (receives and echoes a text label)
func input(t: String) -> String
{
    print("\(t)? ")
    let keyboard = NSFileHandle.fileHandleWithStandardInput()
    return NSString(data: keyboard.availableData, encoding:NSUTF8StringEncoding)!.stringByTrimmingCharactersInSet(NSCharacterSet.newlineCharacterSet())
}

// Read an integer number within a closed interval from keyboard (default range = 1...1000)
// Note: Returns nil if input string is not a number
func inputNum(t: String, range: ClosedInterval<Int> = 1...1_000) -> Int!
{
    if let n = input(t).toInt() {
        if range.contains(n) {
            return n
        }
    }
    return nil
}

/*

// POSIBLES SOLUCIONES

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

// OTHER

let intentos = 12
var final = false
var oculto = randomNum()
var num: Int!
for i in 1...intentos {  // SWIFT2 for ... "where !final"
    num = inputNum("\(i). Anota número")
    switch num {
    case nil:
        println("Escribiste un valor inválido, intenta de nuevo")
        continue
    case _ where num==oculto:
        final = true
    case _ where num<oculto:
        println("Anota num MAYOR")
    case _ where num>oculto:
        println("Anota num menor")
    default:
        break
    }
    if final {
        break
    }
}
if final {
    println("Ganaste!")
} else {
    println("Bye! el número era \(oculto)")
}
*/
