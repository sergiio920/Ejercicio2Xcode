//
//  ViewController.swift
//  Ejercicio2Xcode
//
//  Created by Sergio Morón on 26/10/2023.
//

import UIKit

class ViewController: UIViewController {

    //OUTLETS
    @IBOutlet var txtNombre: UITextField!
    @IBOutlet var txtTotalPreguntas: UITextField!
    @IBOutlet var txtTotalAcertadas: UITextField!
    @IBOutlet var txtPosicionLista: UITextField!
    @IBOutlet var lbMostrarInformacion: UILabel!
    
    //VARIABLES PARA LA LÓGICA                                                                            
    var listaExamenes:[Examen]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        listaExamenes = []
    }

    
    @IBAction func btnInsertarExamen(_ sender: Any) {
        let nombre = txtNombre.text!
        let totalP = txtTotalPreguntas.text!
        let totalA = txtTotalAcertadas.text!
        
        if nombre.isEmpty{
            //Mensaje de no se puede
            
        }else{
            //Creamos el examen y lo metemos en la lista
            listaExamenes.append(Examen(nombre: nombre, totalPreguntas: Int(totalP)!, totalAcertadas: Int(totalA)!))
            
            alertError(titulo: "CONFIRMACIÓN", mensaje: "Datos almacenados con éxito")
            txtNombre.text = ""
            txtTotalPreguntas.text = ""
            txtTotalAcertadas.text = ""
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let indice = txtPosicionLista.text!
        
        if indice.isEmpty {
            alertError(titulo: "ERROR", mensaje: "Tienes que rellenar la posición")
        }else{
            if Int(indice)! < 1 || Int(indice)! > listaExamenes.count {
                alertError(titulo: "ERROR", mensaje: "Posición Incorrecta")
            }else{
                if segue.identifier == "VER"{
                    let destino = segue.destination as! VerExamenViewController
                    destino.examen = listaExamenes[Int(indice)!-1]
                }
            }
        }
    }
    
    
    func alertError(titulo: String, mensaje: String){
        let alert = UIAlertController(title: titulo, message: mensaje, preferredStyle: .alert)
        
        alert.addAction(UIAlertAction(title: "OK", style: .destructive, handler: nil))
        
        self.present(alert, animated: true, completion: nil)
    }
}

