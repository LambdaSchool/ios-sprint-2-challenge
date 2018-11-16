import UIKit

class Crayon {
    let name: String // Crayon name
    let color: UIColor // Crayon color
    let image: UIImage? // Crayon image
    var isLiked: Bool = false // User likes
    
    init(name: String, color: UIColor, image: UIImage?) {
        self.name = name
        self.color = color
        self.image = image
    }

    // Return a contrasting color that can be
    // seen against the color
    func contrastingColor() -> UIColor {
        var (r, g, b): (CGFloat, CGFloat, CGFloat) = (0, 0, 0)
        color.getRed(&r, green: &g, blue: &b, alpha: nil)
        let luminance = r * 0.2989 + g * 0.5870 + b * 0.1140
        return luminance > 0.5 ? .black : .white
    }
    
    var buttonEmoji = "🤔"
    
    func toggleIsLiked(crayon: Crayon) {
        crayon.isLiked = !crayon.isLiked
        
        switch crayon.isLiked {
        case true:
            buttonEmoji = "🤔"
        case false:
            buttonEmoji = "❤️"
        }
    }
}

