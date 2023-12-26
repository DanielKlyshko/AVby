import UIKit

class CarAdTableViewCell: UITableViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()

    }
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: "CarAdTableViewCell")
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
