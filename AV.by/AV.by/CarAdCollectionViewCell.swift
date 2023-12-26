import UIKit

class CarAdCollectionViewCell: UICollectionViewCell {
    
    let carImage = UIImageView()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        addSubviews(carImage)
        carImage.translatesAutoresizingMaskIntoConstraints = false
        carImage.topAnchor.constraint(equalTo: self.topAnchor, constant: 0).isActive = true
        carImage.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: 0).isActive = true
        carImage.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 0).isActive = true
        carImage.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: 0).isActive = true
        
    }
    
    
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setImage(_ image: UIImage) {
        carImage.image = image
    }
    
}
