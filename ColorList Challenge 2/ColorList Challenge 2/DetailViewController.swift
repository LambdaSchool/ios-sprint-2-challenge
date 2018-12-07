//
//  DetailViewController.swift
//  ColorList Challenge 2
//
//  Created by Vijay Das on 12/7/18.
//  Copyright © 2018 Vijay Das. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    
    
    var crayon: Crayon?
    
    @IBOutlet weak var detailBorder: UIView!
    @IBOutlet weak var colorView: UIView!
    
    
    @IBOutlet weak var crayonImage: UIImageView!
    @IBOutlet weak var swatchView: UIImageView!
 
    
    @IBOutlet weak var colorName: UILabel!
    
    
    @IBOutlet weak var likeTopButton: UIButton!
    @IBOutlet weak var likeBottonButton: UIButton!
 
    
    @IBAction func topButtonPressed(_ sender: Any) {
        crayon?.isLiked.toggle()
        updateViews()
    }
    
    @IBAction func bottonButtonPressed(_ sender: Any) {
        crayon?.isLiked.toggle()
        updateViews()
    }
    
    override func viewDidLoad() {
        updateViews()
    }
    
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        
        guard let crayon = crayon else { return }
        
        likeTopButton?.backgroundColor = crayon.color
        likeBottonButton?.backgroundColor = crayon.color
        detailBorder?.backgroundColor = crayon.color
        colorView?.backgroundColor = .white
        colorName?.text = crayon.name
        crayonImage?.image = crayon.image
        swatchView?.backgroundColor = crayon.color
        likeTopButton.setTitle.("\(buttonEmoji)")
        
        updateViews()
        
    }
    
    var like: String = "❤️"
    var thinking: String = "🤔"
    var buttonEmoji: String = ""
    
    
    // Like button
    
    // need a function that can be called in actions for both buttons and in view did load
    // that reflects state of like/not liked ... and updates the state of that crayon
    // isLiked variable
    
    func updateViews() {
        guard let crayon = crayon else { return }
        
 

      
        
        
        
        
    }
    
    
    
    
    
    
    
    
    
    
    
}
