//
//  ViewController.swift
//  HamburgerChallenge
//
//  Created by merlin Moya on 9/1/18.
//  Copyright © 2018 merlin Moya. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var mensajePais: UILabel!
    @IBOutlet weak var mensajeHamburguesa: UILabel!
    
    let colores = Colores()
    let paises = ColeccionDePaises()
    let hamburguesas = ColeccionDeHamburguesa()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func dameHamburguesa(sender: UIButton) {
        mensajePais.text = paises.obtenPais()
        mensajeHamburguesa.text = hamburguesas.obtenHamburguesa()
        let colorAleatorio = colores.regresaColordeformaAleatorio()
        view.backgroundColor = colorAleatorio
        view.tintColor = colorAleatorio
    }

}

