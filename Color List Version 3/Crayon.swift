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
    
    func fourDigits (_ number: NSNumber) -> String {
        let numberFormatter = NumberFormatter()
        numberFormatter.usesSignificantDigits = true
        numberFormatter.minimumSignificantDigits = 3
        numberFormatter.maximumSignificantDigits = 3
        print(numberFormatter.string(from: number))
        guard let formattedNum = numberFormatter.string(from: number) else { return "Nope. Didn't Work"}
        return formattedNum
    }
    
    func information() ->  String {
        var (r, g, b): (CGFloat, CGFloat, CGFloat) = (0, 0, 0)
        color.getRed(&r, green: &g, blue: &b, alpha: nil)
        let rDouble: Double = Double(r)
        let gDouble: Double = Double(g)
        let bDouble: Double = Double(b)
        
        return String(format: "(R:\(fourDigits(NSNumber(value: rDouble))) G:\(fourDigits(NSNumber(value: gDouble))) B:\(fourDigits(NSNumber(value: bDouble)))")
    }
}
