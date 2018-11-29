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

}
