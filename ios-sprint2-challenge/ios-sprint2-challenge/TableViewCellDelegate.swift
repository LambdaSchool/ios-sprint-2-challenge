import UIKit
import Foundation

protocol TableViewCellDelegate: class {
    func tappedLikeButton(on cell: TableViewCell)
}
