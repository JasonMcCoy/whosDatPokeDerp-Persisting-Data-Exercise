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
        
        UserDefaults.standard.setValue("Bulbasaur", forKey: "pokemon")
        UserDefaults.standard.synchronize()
        
    }
    
    @IBAction func charmanderBtn(_ sender: AnyObject) {
        
        pokemonLblTxt.text = lblTxt[1]
        
        UserDefaults.standard.setValue("Charmander", forKey: "pokemon")
        UserDefaults.standard.synchronize()
        
    }
    
    @IBAction func squirtleBtn(_ sender: AnyObject) {
        
        pokemonLblTxt.text = lblTxt[2]
        
        UserDefaults.standard.setValue("Squirtle", forKey: "pokemon")
        UserDefaults.standard.synchronize()
        
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let pokemon = UserDefaults.standard.value(forKey: "pokemon") as? String {
            pokemonLblTxt.text = "\(pokemon)"
        } else {
            pokemonLblTxt.text = "Tap a Pokemon to know it's name!"
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

