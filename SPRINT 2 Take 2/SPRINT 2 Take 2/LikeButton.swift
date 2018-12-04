import UIKit

class Button {
    var isOn = false
    
    func likeButtonPressed() {
        activateButton(bool: !isOn)
        
    }
    
    func activateButton(bool: Bool) {
        isOn = bool
        let title = bool ? "😍" : "🤔"
        
        
    }
}

