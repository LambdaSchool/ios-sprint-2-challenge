//
//  TableViewController.swift
//  iOS4 - Sprint Challenge 2 (MBP) - ColorList
//
//  Created by Sameera Leola on 12/7/18.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var topColorBar: UIView!
    @IBOutlet weak var topLikeButton: UIButton!
    
    @IBOutlet weak var bottomColorBar: UIView!
    @IBOutlet weak var bottomLikeButton: UIButton!
    
    @IBOutlet weak var crayonDetailImage: UIImageView!
    @IBOutlet weak var crayonDetailName: UILabel!
    @IBOutlet weak var colorSwatch: UIImageView!
    
    //Create a variable to hold the values passed from the segue
    var theCrayon: Crayon?
    
    //Not liked and liked button options
    var notLiked: String = "🤔"
    var liked: String =  "❤️"
    var likeOrNot: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("In detail")
        likeOrNot = (theCrayon?.isLiked)! ? liked : notLiked
        topLikeButton.setTitle(likeOrNot, for: .normal)
        bottomLikeButton.setTitle(likeOrNot, for: .normal)
    }
    
    override func viewWillAppear (_ animated: Bool) {
        super.viewWillAppear(animated)
        
        //Display the crayon
        let crayonName = theCrayon?.name
        
        topColorBar.backgroundColor = theCrayon?.color
        crayonDetailImage.image = UIImage(named: crayonName!)
        crayonDetailName.text = crayonName
        colorSwatch.backgroundColor = theCrayon?.color
        bottomColorBar.backgroundColor = theCrayon?.color
    }
    
    @IBAction func topLikeButtonClicked(_ sender: Any) {
        theCrayon?.isLiked.toggle()
        likeOrNot = (theCrayon?.isLiked)! ? liked : notLiked
        topLikeButton.setTitle(likeOrNot, for: .normal)
        bottomLikeButton.setTitle(likeOrNot, for: .normal)
    }
    
    @IBAction func bottomLikeButtonClicked(_ sender: Any) {
        theCrayon?.isLiked.toggle()
        likeOrNot = (theCrayon?.isLiked)! ? liked : notLiked
        topLikeButton.setTitle(likeOrNot, for: .normal)
        bottomLikeButton.setTitle(likeOrNot, for: .normal)
    }
}
