import UIKit
import Foundation

class DetailViewController: UIViewController {
    var crayon: Crayon?
    
    @IBOutlet weak var crayonColorImageView: UIImageView!
    @IBOutlet weak var swatchColorImageView: UIImageView!
    @IBOutlet weak var colorNameLabel: UILabel!
    
    
    @IBOutlet var likeColorButtons: [UIButton]!
    
    @IBAction func tappedLikeButton(_ sender: UIButton) {
        CrayonHelper.shared.buttonPressed(likeColorButtons[0])
        CrayonHelper.shared.buttonPressed(likeColorButtons[1])
        crayon?.isLiked = likeColorButtons[0].isSelected
    }
    
    // TODO: stretch goals
    
    @IBOutlet weak var colorLabelFloat: UILabel!
    @IBOutlet weak var colorLabelHex: UILabel!
    @IBOutlet weak var colorLabelInt: UILabel!
    
   

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        guard let crayon = crayon else {fatalError("no valid crayon found")}
        colorNameLabel.text = crayon.name
        crayonColorImageView.image = crayon.image
        swatchColorImageView.backgroundColor = crayon.color
        likeColorButtons[0].backgroundColor = crayon.color
        likeColorButtons[1].backgroundColor = crayon.color
        likeColorButtons[0].isSelected = crayon.isLiked
        likeColorButtons[1].isSelected = crayon.isLiked

        view.backgroundColor = crayon.color
        
        //get RGB values of color
        var (r, g, b): (CGFloat, CGFloat, CGFloat) = (0, 0, 0)
        crayon.color.getRed(&r, green: &g, blue: &b, alpha: nil)
        
        // formatted to 3 digits
        let rFormatted = String(format: "R: %.3f, ", r)
        let gFormatted = String(format: "G: %.3f, ", g)
        let bFormatted = String(format: "B: %.3f", b)
        colorLabelFloat.text = "(\(rFormatted)\(gFormatted)\(bFormatted))"
        
        // formatted to Int
        let rFormattedInt = String(format: "R: %.0f, ", r * 255)
        let gFormattedInt = String(format: "G: %.0f, ", g * 255)
        let bFormattedInt = String(format: "B: %.0f", b * 255)
        colorLabelInt.text = "(\(rFormattedInt)\(gFormattedInt)\(bFormattedInt))"
        
        // Hex
        let hexColor = String(format: "%02lX%02lX%02lX", lroundf(Float(r * 255)), lroundf(Float(g * 255)), lroundf(Float(b * 255)))
        colorLabelHex.text = "Hex: \(hexColor)"
        
    
        
        
    }
}
