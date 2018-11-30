//Sprint 2 Challenge
import UIKit

class ColorListViewController: UITableViewController {

    //MARK: - section and row count and connect cell to viewController
    //Tell self the structure of the CrayonModel data. What?
    //section count, number count, and a connection to the cells
    
    //Get the section count
    override func numberOfSections(in tableView: UITableView) -> Int {
        return CrayonHelper.shared.sectionCount
    }
    
    //Get the row count
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return CrayonHelper.shared.rowCountFor(section: section)
    }
    
    //Connect the tableViewCell to this viewController
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: Color, for: <#T##IndexPath#>)
    }
    
}
