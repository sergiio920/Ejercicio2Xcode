//
//  Examen.swift
//  Ejercicio2Xcode
//
//  Created by Sergio Morón on 26/10/2023.
//

import Foundation

class Examen{
    var nombre: String
    var totalPreguntas: Int
    var totalAcertadas: Int
    var notaFinal: Float!
    
    //CONSTRUCTOR
    init(nombre: String, totalPreguntas: Int, totalAcertadas: Int) {
        self.nombre = nombre
        self.totalPreguntas = totalPreguntas
        self.totalAcertadas = totalAcertadas
        //self.notaFinal = 0
        
        self.notaFinal = calcularNotaFinal()
    }
    
    //MÉTODOS PROPIOS
    func calcularNotaFinal()->Float{
        return Float (totalAcertadas) / Float (totalPreguntas) * 10
    }
    
    func toString()->String{
        return "Nombre: \(nombre) \nTotal Preguntas: \(totalPreguntas) \nTotal Acertadas: \(totalAcertadas) \nNota Final: \(String(notaFinal))"
    }
}
