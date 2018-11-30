import UIKit

class DetailViewController: UIViewController { // add SwitchControlDelegate
    
    var crayon: Crayon?
    
    @IBOutlet weak var crayonImage: UIImageView!
    
    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var colorSwatch: UIView!
    
    @IBOutlet weak var outerView: UIView!
    
    @IBOutlet weak var topButton: UIButton!
    
    @IBOutlet weak var bottomButton: UIButton!
    
    // Show views
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        // Ensure we have a crayon to present
        guard let crayon = crayon else { return }
        
        // Populate the views
        nameLabel.text = crayon.name
        colorSwatch.backgroundColor = crayon.color
        crayonImage.image = crayon.image
        outerView.backgroundColor = crayon.color
        topButton.backgroundColor = crayon.color
        bottomButton.backgroundColor = crayon.color
        
    }

    @IBOutlet var likeButtons: [UIButton]!
    
    @IBAction func tappedLikeButton(_ sender: UIButton) {
        
        // Call the function in the model controller to toggle the emojis with the first likeButton in the array
        CrayonHelper.shared.buttonTapped(likeButtons[0])
        
        // Call the function in the model controller to toggle the emojis with the second likeButton in the array
        CrayonHelper.shared.buttonTapped(likeButtons[1])
        
        // Change the isLiked bool from the model to the thinking emoji
        crayon?.isLiked = likeButtons[0].isSelected
    }
    
    
    // @IBAction func didChangeState(_ sender: UIButton) {
        // ternary operator that checks if button has been tapped. If it is, it will change to a heart. If not, it will change to a thinking emoji.
        
        //labelForButton.text = sender.isTouchInside ? "🤔" : "❤️"
        
        /* labelForButton.text = "🤔"
        
        if labelForButton.text == "🤔" {
            labelForButton.text = "❤️"
        } else {
            labelForButton.text = "🤔"
        }
    } */
    
}

// outlet is the smiley changing to the heart - isLiked function in the action
// button will be an outlet and an action together
// add a function to each button, unwrap it
// in your function it should be something like 'if this - do this - if else - do that - 

// command - control - space
