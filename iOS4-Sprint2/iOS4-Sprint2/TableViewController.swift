import UIKit

class TableViewController: UITableViewController {
    
    // number of sections
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return CrayonHelper.shared.sectionCount
    }
    
    // section header
    
    override func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        <#code#>
    }
    
    // number of rows
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        <#code#>
    }
    
    // cellForRowAt
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
   
        
        // code to setup the tableview cell
        //
        
        
        
    }
    
    
    // prepare for seque
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // identify the cell to go to detail view
        
        
        
        
    }
    
    
    
    
}
