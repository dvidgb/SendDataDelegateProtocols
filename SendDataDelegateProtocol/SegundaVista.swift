//
//  SegundaVista.swift
//  SendDataDelegateProtocol
//
//  Created by David Bueno on 11/5/21.
//

import UIKit

//protocolo que se implementa en el viewControler de la primera vista

protocol TransferirTexto{
    
    func tranferir(nombre: String, apellidos: String, edad: Int) 
}

class SegundaVista: UIViewController {
    
        
    @IBOutlet weak var txtNameOutlet: UITextField!
    
    
    @IBOutlet weak var txtSurnameOutlet: UITextField!
    
    //variable que se encarga de enviar los datos a través del procolo
    //delegado
    
    var delegate: TransferirTexto?
    
    
    @IBOutlet weak var txtAgeOulet: UITextField!
    override func viewDidLoad() {
        
        
        super.viewDidLoad()
        
        self.title = "Segunda vista"
       
        //para dirigir el curso a la primera caja en este caso la del
        //nombre
        txtNameOutlet.becomeFirstResponder()
    }
    

    @IBAction func sendDataFirstView(_ sender: Any) {
        
        if(txtNameOutlet.text != "") && (txtSurnameOutlet.text != "") && (txtAgeOulet.text != ""){
            
            delegate?.tranferir(nombre: txtNameOutlet.text!, apellidos: txtSurnameOutlet.text!, edad: Int(txtAgeOulet.text!)!)
            
            self.navigationController?.popViewController(animated: true)
        }
    }
    
   

  
    
}
