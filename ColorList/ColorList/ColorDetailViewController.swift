import UIKit

class ColorDetailViewController: UITableViewController {
    
    var crayon: Crayon?
    
    // Called just before view controller appears on-screen
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        // Ensure we have a person to present
        guard let crayon = crayon else { return }
        
        // Populate the two text fields
//        nameField.text = person.name
//        cohortField.text = person.cohort
    }
    
    
    
    
    
}
