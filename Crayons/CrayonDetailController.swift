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
        super.viewDidLoad()
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
    
    func extractColours(){
        var red: CGFloat = 0
        var green: CGFloat = 0
        var blue: CGFloat = 0
        var alpha: CGFloat = 0
        
        currentCrayon!.color.getRed(&red, green: &green, blue: &blue, alpha: &alpha)
        
        rgbDoubleLabel.text = "R: \(red.rounded(.toNearestOrAwayFromZero)), G: \(green), B: \(blue)"
        rgbIntLabel.text = "R: \(red), G: \(green), B: \(blue)"
        hexLabel.text = "Hex: "
        
    
    }
    
    func updateViews(){
        guard currentCrayon != nil else { return }
        
        view.backgroundColor = currentCrayon?.color
        buttonOne.backgroundColor = currentCrayon?.color
        buttonTwo.backgroundColor = currentCrayon?.color
        
        crayonImageView.image = currentCrayon?.image
        swatchImageView.backgroundColor = currentCrayon?.color
        nameLabel.text = currentCrayon?.name
        
        extractColours()
        
        switch currentCrayon?.isLiked  {
        case true : buttonOne.titleLabel?.text = "❤️"; buttonTwo.titleLabel?.text = "❤️"
        default : buttonOne.titleLabel?.text = "🤔"; buttonTwo.titleLabel?.text = "🤔"
        }
        
    }
    
    @IBAction func buttonOneClicked(_ sender: Any) {
        
      currentCrayon?.isLiked.toggle()
        updateViews()
        
    }
    
    @IBAction func buttonTwoClicked(_ sender: Any) {
       currentCrayon?.isLiked.toggle()
        updateViews()
    }
    
}
