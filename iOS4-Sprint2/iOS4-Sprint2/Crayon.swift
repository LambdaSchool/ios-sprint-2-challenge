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
    
    // need a function and string for the thinking/like string to be shown in the top and bottom like button text methods
    // and initialize it to false as in the isLiked property declaration ... which means "thinking emoji"
    var likeButtonEmoji = "🤔"
    func isLikedToggled(crayon: Crayon) {

        switch crayon.isLiked {
        case true:
            likeButtonEmoji = "🤔"
        case false:
            likeButtonEmoji = "❤️"
        }
    
    }
    
}

