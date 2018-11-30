import UIKit
import Foundation

class DetailViewController: UIViewController {
    
    var crayon: Crayon?
    
    @IBOutlet weak var button1: UIButton!

    @IBOutlet weak var button2: UIButton!
    
    @IBOutlet weak var label: UILabel!
    
    @IBOutlet var detailView: UIView!
    
    @IBOutlet weak var crayonImage: UIImageView!
    
    @IBOutlet weak var swatchView: UIView!
    
    @IBOutlet weak var backgroundView: UIView!
    
    @IBAction func tapButton1(_ sender: Any) {
        updateViews()
    }
    
    @IBAction func tapButton2(_ sender: Any) {
        updateViews()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        guard let crayon = crayon else { return }
        
        detailView?.backgroundColor = crayon.color
        button1?.backgroundColor = crayon.color
        button1?.setTitle(crayon.likeEmoji, for: .normal)
        button2?.backgroundColor = crayon.color
        button2?.setTitle(crayon.likeEmoji, for: .normal)
        label?.text = crayon.name
        swatchView?.backgroundColor = crayon.color
        crayonImage?.image = crayon.image
        backgroundView?.backgroundColor = .white
        
        updateViews()
        
    }
    
    func updateViews() {
        guard let crayon = crayon else { return }
        crayon.tappedLikeButton(crayon: crayon)
        print(crayon.isLiked)
        print(crayon.likeEmoji)
    }
    
    
    

    
    

    
    
    
    
    
}
