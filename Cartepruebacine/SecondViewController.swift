//
//  SecondViewController.swift
//  Cartepruebacine
//
//  Created by Cesar on 10/11/19.
//  Copyright © 2019 Cesar Vargas. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
   
    
    @IBOutlet var Horario: UILabel!
    
    
    @IBAction func restBoletos(_ sender: Any) {
        
        if boletosAdultoInt == 0{ }else{
            boletosAdultoInt = boletosAdultoInt - 1
            cantBoletoAdulto?.text = String(boletosAdultoInt)
        }
       
    }
    
    @IBAction func addBoletos(_ sender: Any) {
        boletosAdultoInt = boletosAdultoInt + 1
        cantBoletoAdulto?.text = String(boletosAdultoInt)
    }
    
    @IBAction func niñoRestBoletos(_ sender: Any) {
        if boletosNiñoInt == 0 { }else {
            boletosNiñoInt = boletosNiñoInt - 1
            cantBoletoNiño?.text = String(boletosNiñoInt)
        }
    }
    
    
    @IBAction func niñoAddBoletos(_ sender: Any) {
        boletosNiñoInt = boletosNiñoInt + 1
        cantBoletoNiño?.text = String(boletosNiñoInt)
    }
    
    
    @IBOutlet weak var cantBoletoAdulto: UILabel?
    @IBOutlet weak var cantBoletoNiño: UILabel?
    @IBOutlet weak var boletosDisponibles: UILabel?
    
    //Variables de boletos
    
    var boletosNiñoInt: Int = 0
    var boletosAdultoInt: Int = 0
    var boletosDisponiblesInt: Int = 40
    
    
    //Añadiendo imagenes
    var ImageView2 : UIImageView!
    var nombrePelucila : String = ""
    
    
    //Imagenes disponibles
     var imagenes = ["ad-astra","joker-cartel","geminis","chicos-buenos","todas-las-pecas","dora","un-amigo","1","2","3"]
    
    //Horarios
    
    var horarios = ["11:00","12:50","14:30","11:20","15:55","12:45","19:50","17:35","23:50","13:45"]
    //Descripcion
    var contentDes = ["Astronaut Roy McBride undertakes a mission across an unforgiving solar system to uncover the truth about his missing father and his doomed expedition that now, 30 years later, threatens the universe.","Warner Bros. Pictures presenta Guason, protagonizada por el actor nominado a un Oscar, Joaquin Phoenix, junto con el ganador de un premio Oscar, Robert De Niro, y dirigida, producida y coescrita por Todd Phillips, también nominado a un Oscar. La película gira alrededor de este icónico archienemigo y relata una historia original e independiente nunca antes vista en una pantalla de cine.","Un innovador thriller de acción protagonizado por Will Smith como Henry Brogan, un asesino por encargo que comienza a ser perseguido por un hombre más joven que él y que parece predecir cada uno de sus movimientos. También cuenta con las actuaciones de Mary Elizabeth Winstead, Clive Owen y Benedict Wong, bajo la dirección del ganador al Oscar, Ang Lee y la producción de los reconocidos Jerry Bruckheimer, David Ellison, Dana Goldberg y Don Granger"]

    override func viewDidLoad() {
        super.viewDidLoad()
        
//Añadiendo la imagen a la pantalla
        

        ImageView2 = UIImageView(frame: CGRect(x: 10, y: 40, width:200 ,height: 300))
        ImageView2.image = UIImage(named: nombrePelucila )
        view.addSubview(ImageView2)
//Etiqueta Descripcion
        
    let movieDesc = UILabel(frame: CGRect(x:220, y:40 , width: 200, height: 300))
        movieDesc.text = contentDes[1]
        movieDesc.numberOfLines = 0
        movieDesc.textAlignment = .left
        movieDesc.lineBreakMode = .byWordWrapping
        movieDesc.textColor = .black
        movieDesc.sizeToFit()
        movieDesc.font = UIFont(name: "Avenir", size: 15)
        view.addSubview(movieDesc)
        
        
//Horario en el Label
        Horario.text = "Horario : \(horarios[3])"
        
        
        
        
//Cantidades de Boletos
        
        
        boletosDisponibles?.text = String(boletosDisponiblesInt)
        cantBoletoNiño?.text = String(boletosNiñoInt)
        cantBoletoAdulto?.text = String(boletosAdultoInt)
     
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
              if segue.identifier == "compraTouch"{
                if let terceraVista = segue.destination as? DulcesViewController{
                    terceraVista.boletosAdulto = boletosAdultoInt
                    terceraVista.boletosNiño = boletosNiñoInt
                    
                }
              }
          }
    
    override func viewDidAppear(_ animated: Bool) {
        let navBar = self.navigationController?.navigationBar
       
        navigationItem.title = imagenes[5]
        
        
    }
    
   

    


}
