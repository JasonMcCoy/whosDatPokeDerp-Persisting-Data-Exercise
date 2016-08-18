//
//  ViewController.swift
//  whosDatPokeDerp Persisting Data Exercise
//
//  Created by Jason McCoy on 8/16/16.
//  Copyright © 2016 Jason McCoy. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var currentLblTxt = 0
    let lblTxt = ["Bulbasaur", "Charmander", "Squirtle"]
    
    @IBOutlet weak var pokemonLblTxt: UILabel!
    
    @IBAction func bulbasaurBtn(_ sender: AnyObject) {
        
        pokemonLblTxt.text = lblTxt[0]
        
    }
    
    @IBAction func charmanderBtn(_ sender: AnyObject) {
        
        pokemonLblTxt.text = lblTxt[1]
        
    }
    
    @IBAction func squirtleBtn(_ sender: AnyObject) {
        
        pokemonLblTxt.text = lblTxt[2]
        
    }

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

