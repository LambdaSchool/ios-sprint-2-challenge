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
        updateViews()
    }
    
    @IBAction func bottonButtonPressed(_ sender: Any) {
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
        updateViews()
    }
    
    var buttonEmoji: String = ""
    func toggleIsLiked(crayon: Crayon) {
        crayon.isLiked = !crayon.isLiked
        switch crayon.isLiked {
        case true:
            crayon.isLiked = true
            buttonEmoji = "🤔"
        case false:
            crayon.isLiked = false
            buttonEmoji = "❤️"
       }
  }

    func updateViews() {
        guard let crayon = crayon else { return }
        toggleIsLiked(crayon: crayon)
        likeTopButton?.setTitle("\(buttonEmoji)", for: .normal)
        likeBottonButton?.setTitle("\(buttonEmoji)", for: .normal)
    }
}
