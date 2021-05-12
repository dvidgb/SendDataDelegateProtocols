//
//  ViewController.swift
//  SendDataDelegateProtocol
//
//  Created by David Bueno on 11/5/21.
//

import UIKit

class PrimeraVista: UIViewController, TransferirTexto {
   
    
   
    
    

    
    @IBOutlet weak var AddButtonOutlet: UIBarButtonItem!
    
    @IBOutlet weak var nameLabelOutlet: UILabel!
    
    @IBOutlet weak var surnameLabelOutlet: UILabel!
    
    @IBOutlet weak var ageLabelOutlet: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
       
        
    }
    
    
    func tranferir(nombre: String, apellidos: String, edad: Int) {
        nameLabelOutlet.text = nombre
        surnameLabelOutlet.text = apellidos
        ageLabelOutlet.text =  String(format: "%i", edad)
    }
    
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let segundavista  = segue.destination as! SegundaVista
        segundavista.delegate = self
    }

}

