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
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        guard let crayon = crayon else { return }
        detailViewColorName.text = crayon.name
        detailViewImage.image = crayon.image
        detailViewColorBox.backgroundColor = crayon.color
        self.view.backgroundColor = crayon.color
    }
}
