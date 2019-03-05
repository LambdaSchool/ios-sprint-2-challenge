//
//  CrayonDetailController.swift
//  Crayons
//
//  Created by Lotanna Igwe-Odunze on 3/5/19.
//  Copyright © 2019 Lotanna Igwe-Odunze. All rights reserved.
//

import UIKit

class CrayonDetailController: UIViewController {
    
    var currentCrayon: Crayon?
    
    override func viewDidLoad() {
        updateViews()
    }
    
    @IBOutlet weak var buttonOne: UIButton!
    
    @IBOutlet weak var buttonTwo: UIButton!
    
    @IBOutlet weak var crayonImageView: UIImageView!
    
    @IBOutlet weak var swatchImageView: UIImageView!
    
    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var rgbDoubleLabel: UILabel!
    
    @IBOutlet weak var rgbIntLabel: UILabel!
    
    @IBOutlet weak var hexLabel: UILabel!
    
    func updateViews(){
        guard currentCrayon != nil else { return }
        
        view.backgroundColor = currentCrayon?.color
        buttonOne.backgroundColor = currentCrayon?.color
        buttonTwo.backgroundColor = currentCrayon?.color
        
        crayonImageView.image = currentCrayon?.image
        swatchImageView.backgroundColor = currentCrayon?.color
        nameLabel.text = currentCrayon?.name
        rgbDoubleLabel.text = "R: , G: , B: "
        rgbDoubleLabel.text = "R: , G: , B: \(currentCrayon?.color.cgColor.components?.first)"
        hexLabel.text = "Hex: "
        
    }
    
    @IBAction func buttonOneClicked(_ sender: Any) {
        
    }
    
    @IBAction func buttonTwoClicked(_ sender: Any) {
    }
    
    
}
