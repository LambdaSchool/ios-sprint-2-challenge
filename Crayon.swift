import UIKit

class Crayon {
    let name: String // Crayon name
    let color: UIColor // Crayon color
    let image: UIImage? // Crayon image
    var isLiked: Bool = false // User likes
    
    init(name: String, color: UIColor, image: UIImage?) {
        (self.name, self.color, self.image) = (name, color, image)
    }

    // Return a contrasting color that can be
    // seen against the color
    func contrastingColor() -> UIColor {
        var (r, g, b): (CGFloat, CGFloat, CGFloat) = (0, 0, 0)
        color.getRed(&r, green: &g, blue: &b, alpha: nil)
        let luminance = r * 0.2989 + g * 0.5870 + b * 0.1140
        return luminance > 0.5 ? .black : .white
        
    }
    //Return a complimentary color
    func getComplementaryForColor(color: UIColor) -> UIColor {
        
        let ciColor = CIColor(color: color)
        
        // get the current values and make the difference from white:
        let compRed: CGFloat = 1.0 - ciColor.red
        let compGreen: CGFloat = 1.0 - ciColor.green
        let compBlue: CGFloat = 1.0 - ciColor.blue
        
        return UIColor(red: compRed, green: compGreen, blue: compBlue, alpha: 1.0)
    }

}

