
import UIKit
import Foundation

class DetailViewController: UIViewController {
    
    let thinker = "\u{1F914}"
    let heart = "\u{2764}"
    var crayon: Crayon?
    var (r, g, b): (CGFloat, CGFloat, CGFloat) = (0, 0, 0)
    
    @IBOutlet weak var crayonImageView: UIImageView!
    @IBOutlet weak var crayonNameLabel: UILabel!
    @IBOutlet weak var crayonColorView: UIView!
    @IBOutlet weak var crayonLiteralLabel: UILabel!
    @IBOutlet weak var topBufferView: UIView!
    @IBOutlet weak var bottomBufferView: UIView!
    @IBOutlet weak var topBufferButton: UIButton!
    @IBOutlet weak var bottomBufferButton: UIButton!
    @IBOutlet weak var inlaidView: UIView!
    @IBOutlet var detailView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        guard let crayon = crayon else {return}
        
        inlaidView.backgroundColor = .white
        detailView.backgroundColor = crayon.color
        crayonImageView.image = crayon.image
        crayonNameLabel.text = crayon.name
        crayonColorView.backgroundColor = crayon.color
        topBufferView.backgroundColor = crayon.color
        bottomBufferView.backgroundColor = crayon.color
        
        crayon.color.getRed(&r, green: &g, blue: &b, alpha: nil)
        
        // TODO: catch inappropriate rounding
        var literalLabelText = "(R: \(String(format: "%.3f", r)), G: \(String(format: "%.3f", g)), B: \(String(format: "%.3f", b)))\n"
        literalLabelText += "(R: \(String(format: "%.0f", r*255)), G: \(String(format: "%.0f", g*255)), B: \(String(format: "%.0f", b*255)))\n"
        literalLabelText += "#\(String(Int(r*255), radix: 16))\(String(Int(g*255), radix: 16))\(String(Int(b*255), radix: 16))"
        
        crayonLiteralLabel.text = literalLabelText
        
        updateLikeButton()

    }
    @IBAction func aBufferButtonClicked(_ sender: UIButton) {
        
        guard let crayon = crayon else {return}
        CrayonHelper.shared.changeIsLiked(for: crayon)
        updateLikeButton()
        
    }
    func updateLikeButton(){
        guard let crayon = crayon else {return}
        if(crayon.isLiked) {
            topBufferButton.setTitle(heart, for: .normal)
            bottomBufferButton.setTitle(heart, for: .normal)
        } else {
            topBufferButton.setTitle(thinker, for: .normal)
            bottomBufferButton.setTitle(thinker, for: .normal)
        }
    }

}
