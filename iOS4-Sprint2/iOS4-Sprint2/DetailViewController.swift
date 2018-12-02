import UIKit

class DetailViewController: UIViewController {
    // get the data from the model
    var crayon: Crayon?
    
    // setup the outlets and actions from the detail view
    // the views for border and background colors
    @IBOutlet weak var detailBorder: UIView!
    @IBOutlet weak var colorView: UIView!
    
    // for the crayon image and the swatchView
    @IBOutlet weak var crayonImage: UIImageView!
    @IBOutlet weak var swatchView: UIView!
    
    // for the labels
    
    @IBOutlet weak var colorName: UILabel!
    @IBOutlet weak var colorSpecs: UILabel!
    
    // outlets for the two like buttons
    
    @IBOutlet weak var likeTopButton: UIButton!
    @IBOutlet weak var likeBottomButton: UIButton!

    // actions for the two like buttons
    @IBAction func likeTopButton(_ sender: Any) {
        updateViews()
    }
    @IBAction func likeBottomButton(_ sender: Any) {
        updateViews()
    }
    
// view will appear
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        guard let crayon = crayon else { return }
        // set colors to match crayon
        likeTopButton?.backgroundColor = crayon.color
        likeBottomButton?.backgroundColor = crayon.color
        // need to add assignment for button title to be emoji
        //likeTopButton?.setTitle(crayon.likeButtonEmoji for: UI)
        likeTopButton?.setTitle(crayon.likeButtonEmoji, for: .normal)
        likeBottomButton?.setTitle(crayon.likeButtonEmoji, for: .normal)
        
        // change color of the border box and the cell box to match crayon color
        detailBorder?.backgroundColor = crayon.color
        colorView?.backgroundColor = .white
        colorName?.text = crayon.name
        swatchView?.backgroundColor = crayon.color
        crayonImage.image = crayon.image
        colorSpecs?.text = crayon.name
        updateViews()
        
    }

    // update views function
        func updateViews() {
        guard let crayon = crayon else { return }
//            Crayon.isLikedToggled(crayon: crayon)
            // testing.debugging:
            print(crayon.isLiked)
            print(crayon.likeButtonEmoji)
            print(crayon.isLikedToggled(crayon: crayon))
        }
    }
    
    

