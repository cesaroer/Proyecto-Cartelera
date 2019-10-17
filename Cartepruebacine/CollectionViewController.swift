//
//  CollectionViewController.swift
//  Cartepruebacine
//
//  Created by Cesar on 10/9/19.
//  Copyright © 2019 Cesar Vargas. All rights reserved.
//

import UIKit

class CollectionViewController: UIViewController {
    
    @IBOutlet weak var collectionView: UICollectionView!
    
  
    
    
    
    //Añadiendo imagenes
    var ImageView : UIImageView!
    
    
        
    
    
    
   
    var imagenes = ["ad-astra","joker-cartel","geminis","chicos-buenos","todas-las-pecas","dora","un-amigo","1","2","3"]
    var nombre = "un-amigo"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        
    
    }
    
    override func viewDidAppear(_ animated: Bool) {
        let navBar = self.navigationController?.navigationBar
        navBar?.tintColor = UIColor.purple
        navigationItem.title = "Cartelera"
        
        
    }
    
    //Pasando datos del Segue
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "cellTouch"{
            let SegundaVista = segue.destination as! SecondViewController
            
            SegundaVista.nombrePelucila = nombre
            
            
        }
        
        
    }

}

extension CollectionViewController: UICollectionViewDelegate, UICollectionViewDataSource{
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int{
           return imagenes.count
       }
    
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CollectionViewCell", for: indexPath)
        
    
    
        //Imagenes
        //ImageView = UIImageView(frame: CGRect(x: 0, y: 10, width: cell.bounds.size.width, height: 50))
        ImageView = UIImageView(frame: CGRect(x: 0, y: 15, width: cell.bounds.size.width, height: cell.bounds.size.height))
        ImageView.image = UIImage(named: imagenes[indexPath.row])
        cell.contentView.addSubview(ImageView)
        
        //Label
        let title = UILabel(frame: CGRect(x:0, y:0 , width: cell.bounds.size.width, height: 40))
            title.text = imagenes[indexPath.row]
            //nombre = title.text ?? ""
            title.textColor = .white
            title.font = UIFont(name: "Avenir", size: 25)
        
      
        
            title.textAlignment = .center
            title.backgroundColor = .purple
        //Celda
            cell.contentView.addSubview(title)
            cell.contentView.layer.cornerRadius = 15.0
            cell.contentView.layer.borderWidth = 5.0
        //La celda ocupara su borde tambien
            cell.contentView.layer.borderColor = UIColor.clear.cgColor
            cell.contentView.layer.masksToBounds = true
            cell.backgroundColor = .none
        //Sombra
            cell.layer.shadowColor = UIColor.black.cgColor
        cell.layer.shadowOffset = CGSize(width: 5, height: 5)
        cell.layer.shadowRadius = 2.0
        cell.layer.shadowOpacity = 0.5
        cell.layer.masksToBounds = false
        cell.layer.shadowPath = UIBezierPath(roundedRect: cell.bounds, cornerRadius: cell.contentView.layer.cornerRadius).cgPath
      
        
        return cell
    }
    
   }

extension CollectionViewController: UICollectionViewDelegateFlowLayout{
    
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        let cellSize = CGSize(width: 200, height: 300)
        
        return cellSize
        
        
    }
    
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 10.0
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        
        return 10.0
    }
    
    
    
}
