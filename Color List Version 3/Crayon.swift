//
//  Crayon.swift
//  Color List Version 3
//
//  Created by Ivan Caldwell on 11/29/18.
//  Copyright © 2018 Ivan Caldwell. All rights reserved.
//

import Foundation
import UIKit

class Crayon {
    let name: String // Crayon name
    let color: UIColor // Crayon color
    let image: UIImage? // Crayon image
    var isLiked: Bool = false // User likes
    
    init(name: String, color: UIColor, image: UIImage?) {
        (self.name, self.color, self.image) = (name, color, image)
    }
    
    func getCrayonColor() -> UIColor {
        return self.color
    }

    // Return a contrasting color that can be
    // seen against the color
    func contrastingColor() -> UIColor {
        var (r, g, b): (CGFloat, CGFloat, CGFloat) = (0, 0, 0)
        color.getRed(&r, green: &g, blue: &b, alpha: nil)
        return UIColor(displayP3Red: 1.0 - r, green: 1.0 - g, blue: 1.0 - b, alpha: 1.0)
        //let luminance = r * 0.2989 + g * 0.5870 + b * 0.1140
        //return luminance > 0.5 ? .black : .white
    }
}
