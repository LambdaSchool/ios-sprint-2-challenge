//
//  DetailViewController.swift
//  Color List
//
//  Created by Ivan Caldwell on 11/16/18.
//  Copyright © 2018 Ivan Caldwell. All rights reserved.
//

import Foundation
import UIKit

class DetailViewController: UIViewController {

    var crayon: Crayon?
    @IBOutlet weak var detailViewColorBox: UIView!
    @IBOutlet weak var detailViewImage: UIImageView!
    @IBOutlet weak var detailViewColorName: UILabel!
    
    @IBOutlet weak var bottomButtonColor: UIButton!
    @IBOutlet weak var topButtonColor: UIButton!
    
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        guard let crayon = crayon else { return }
        detailViewColorName.text = crayon.name
        detailViewImage.image = crayon.image
        detailViewColorBox.backgroundColor = crayon.color
        self.view.backgroundColor = crayon.color
        bottomButtonColor.backgroundColor = crayon.color
        topButtonColor.backgroundColor = crayon.color
        topButtonColor.setTitle("❤️", for: .normal)
        bottomButtonColor.setTitle("🤔", for: .normal)
        
    }
    
    

    @IBAction func detailTopButton(_ sender: UIButton) {
        
    }
 
    
    
    @IBAction func detailBottomButton(_ sender: UIButton) {
    }
    
    
    
    @IBOutlet var detailBottomButton: UIView!
    
}
