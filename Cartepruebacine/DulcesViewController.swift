//
//  DulcesViewController.swift
//  Cartepruebacine
//
//  Created by Cesar on 10/11/19.
//  Copyright © 2019 Cesar Vargas. All rights reserved.
//

import UIKit

class DulcesViewController: UIViewController {
    
    @IBOutlet weak var ticketLabel: UILabel!
    
    
    
    var boletosAdulto: Int = 0
    var boletosNiño: Int = 0
    var dulcesTotal: Int = 0
    
    var totalCompra: Int = 0
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        totalCompra = (boletosAdulto * 100) + (boletosNiño * 50)
        ticketLabel.text = "Resumen de compras: \n\n Boletos Adulto = \(boletosAdulto) \n\n Boletos niño = \(boletosNiño) \n \n\n Total = \(totalCompra)"
        ticketLabel.numberOfLines = 0
        ticketLabel.lineBreakMode = .byWordWrapping
        ticketLabel.textColor = .black
        ticketLabel.textAlignment = .center
       
        

      
    }
    
   
    


}
