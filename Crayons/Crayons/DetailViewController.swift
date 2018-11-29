//
//  DetailViewController.swift
//  Crayons
//
//  Created by Stuart on 11/29/18.
//  Copyright © 2018 Stuart. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    
    static let shared = DetailViewController()
    
    var crayon: Crayon?
    
    @IBOutlet weak var crayonName: UILabel!
    
    @IBOutlet weak var crayonImage: UIImageView!
    
    @IBOutlet weak var swatchView: UIView!
    
    @IBOutlet weak var topLikeView: UIView!

    @IBOutlet weak var bottomLikeView: UIView!
    
    @IBOutlet weak var topLikeButton: UIButton!
    
    @IBOutlet weak var bottomLikeButton: UIButton!
    
    @IBOutlet var mainView: UIView!
    
    @IBOutlet weak var mainStackView: UIStackView!
    
    @IBOutlet weak var secondaryView: UIView!

    override func viewWillAppear(_ animated: Bool) {
        
        guard let crayon = crayon else { return }
        
        super.viewWillAppear(animated)
        
        crayonImage.image = crayon.image
        
        crayonName.text = crayon.name
        
        
        swatchView.backgroundColor = crayon.color
        
        topLikeView.backgroundColor = crayon.color
        
        bottomLikeView.backgroundColor = crayon.color
        
        secondaryView.backgroundColor = crayon.color
        
        mainStackView.backgroundColor = .white
        
        mainView.backgroundColor = crayon.contrastingColor()
        
        topLikeButton.setTitle(CrayonHelper.shared.buttonDidUpdate(), for: .normal)
        bottomLikeButton.setTitle(CrayonHelper.shared.buttonDidUpdate(), for: .normal)
        
    }
    
    @IBAction func likeButton(_ sender: Any){
        let string = topLikeButton.currentTitle
        topLikeButton.setTitle(CrayonHelper.shared.userLikes(string: string ?? "Hello"), for: .normal)
        bottomLikeButton.setTitle(CrayonHelper.shared.userLikes(string: string ?? "Hello"), for: .normal)
        
        CrayonHelper.shared.buttonUpdate = topLikeButton.currentTitle
        
    }
    
}
