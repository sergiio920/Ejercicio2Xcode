//
//  VerExamenViewController.swift
//  Ejercicio2Xcode
//
//  Created by Sergio Morón on 26/10/2023.
//

import UIKit

class VerExamenViewController: UIViewController {

    @IBOutlet var lbNombre: UILabel!
    @IBOutlet var lbTotalPreguntas: UILabel!
    @IBOutlet var lbTotalAcertadas: UILabel!
    @IBOutlet var lbNotaFinal: UILabel!
    
    var examen: Examen?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        lbNombre.text = examen?.nombre
        lbTotalPreguntas.text = "\(String(examen!.totalPreguntas))"
        lbTotalPreguntas.text = "\(String(examen!.totalAcertadas))"
        lbTotalPreguntas.text = "\(String(examen!.notaFinal))"
    }

}
