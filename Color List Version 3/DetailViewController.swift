//
//  DetailViewController.swift
//  Color List Version 3
//
//  Created by Ivan Caldwell on 11/29/18.
//  Copyright © 2018 Ivan Caldwell. All rights reserved.
//

import Foundation
import UIKit

class DetailViewController: UIViewController {
    var crayon: Crayon?
    
    @IBOutlet weak var detailViewTopButton: UIButton!
    @IBOutlet weak var detailViewImage: UIImageView!
    @IBOutlet weak var detailViewLabel: UILabel!
    @IBOutlet weak var detailViewSwatch: UIView!
    @IBOutlet weak var detailViewBottomButton: UIButton!
    
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        guard let crayon = crayon else { return }
        detailViewLabel.text = crayon.name
        detailViewImage.image = crayon.image
        detailViewSwatch.backgroundColor = crayon.color
        self.view.backgroundColor = crayon.color
        detailViewBottomButton.backgroundColor = crayon.contrastingColor()
        detailViewTopButton.backgroundColor = crayon.contrastingColor()
        
        if crayon.isLiked == false {
            self.detailViewTopButton.setTitle("🤔", for: .normal)
            self.detailViewBottomButton.setTitle("🤔", for: .normal)
        }
        else {
            self.detailViewTopButton.setTitle("❤️", for: .normal)
            self.detailViewBottomButton.setTitle("❤️", for: .normal)
            
        }
        
    }
    
    @IBAction func detailViewTopButtonTapped(_ sender: Any) {
        toggle()
    }
    
    @IBAction func detailViewButtomBottonTapped(_ sender: Any) {
        toggle()
    }
    
    func toggle () {
        if crayon!.isLiked == false {
            crayon?.isLiked = true
            self.detailViewTopButton.setTitle("❤️", for: .normal)
            self.detailViewBottomButton.setTitle("❤️", for: .normal)
        } else {
            crayon?.isLiked = false
            self.detailViewTopButton.setTitle("🤔", for: .normal)
            self.detailViewBottomButton.setTitle("🤔", for: .normal)
        }
    }
}
