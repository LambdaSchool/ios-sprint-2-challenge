import UIKit

class Crayon {
    let name: String // Crayon name
    let color: UIColor // Crayon color
    let image: UIImage? // Crayon image
    var isLiked: Bool = false // User likes
    
    init(name: String, color: UIColor, image: UIImage?) {
        (self.name, self.color, self.image) = (name, color, image)
    }

    func contrastingColor() -> UIColor {
        var (r, g, b): (CGFloat, CGFloat, CGFloat) = (0, 0, 0)
        color.getRed(&r, green: &g, blue: &b, alpha: nil)
        let luminance = r * 0.2989 + g * 0.5870 + b * 0.1140
        return luminance > 0.5 ? .black : .white
    }
    // like button
//    var randomCrayon = Crayon
//    var likeButton2 = UIButton()
//
//    // viewwillapear
//
//    func didPressLikeButton(_ sender: UIButton) {
//        randomCrayon.isLiked = !randomCrayon.isLiked
//        updateViews()
//    }
//
//    func updateViews() {
//        let likeButtonTitle = randomCrayon.isLiked ? "👎" : "👍 "
//        likeButton.setTitle(likeButtonTitle, for: .normal)
//        likeButton2.setTitle(likeButtonTitle, for: .normal)
//    }
//
    
}

