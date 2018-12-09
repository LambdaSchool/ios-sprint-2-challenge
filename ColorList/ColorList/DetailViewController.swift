//
//  TableViewController.swift
//  iOS4 - Sprint Challenge 2 (MBP) - ColorList
//
//  Created by Sameera Leola on 12/7/18.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet var detailView: UIView!
    
    //Top and bottom ike buttons
    @IBOutlet var likeButtons: [UIButton]!
    
    //Crayon attributes
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
        toggleLike()
    }
    
    override func viewWillAppear (_ animated: Bool) {
        super.viewWillAppear(animated)
        
        //Set the background color for the view
        detailView.backgroundColor = theCrayon?.color
        
        //Display the crayon
        let crayonName = theCrayon?.name
        
        crayonDetailImage.image = UIImage(named: crayonName!)
        crayonDetailName.text = crayonName
        colorSwatch.backgroundColor = theCrayon?.color
    }

    //Update like buttons
    @IBAction func likeButtonClicked(_ sender: Any) {
        theCrayon?.isLiked.toggle()
        toggleLike()
    }

    func toggleLike() {
        likeOrNot = (theCrayon?.isLiked)! ? liked : notLiked
        for likeButton in likeButtons {
            likeButton.backgroundColor = theCrayon?.color
            likeButton.setTitle(likeOrNot, for: .normal)
        }
    }

}
