import UIKit

class CarAdTableViewCell: UITableViewCell {

    // MARK: - Properties
    private let bgView = UIView()
    private let carName = UILabel()
    private let hideButton = UIButton()
    private let favButton = UIButton()
    private let priceBYN = UILabel()
    private let priceUSD = UILabel()
    private let cvLayout = UICollectionViewFlowLayout()
    private var carImages = UICollectionView(frame: .zero, collectionViewLayout: UICollectionViewLayout())
    private let aboutCarText = UILabel()
    private let geoAndDate = UILabel()
    private let decorLine = UIView()
    private let lisingLabel = UILabel()
    private let lisingStartPrice = UILabel()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: "CarAdTableViewCell")
        
        contentView.backgroundColor = .cellBackground
        contentView.heightAnchor.constraint(equalToConstant: 400).isActive = true
        selectionStyle = .none
        
        carImages.collectionViewLayout = cvLayout
        cvLayout.itemSize = CGSize(width: self.frame.width, height: 200)
        cvLayout.scrollDirection = .horizontal
        
        carImages.dataSource = self
        carImages.delegate = self
        carImages.register(CarAdCollectionViewCell.self, forCellWithReuseIdentifier: "CarAdCollectionViewCell")
        
        
        addSubViewsXib()
        addConstrainsXib()
        uiSettingsXib()        
    }
    
    // MARK: - Subviews adding
    
    private func addSubViewsXib() {
        contentView.addSubviews(bgView, carName, hideButton, favButton, priceBYN, priceUSD, carImages, aboutCarText, geoAndDate, decorLine, lisingLabel, lisingStartPrice)
    }
    
    
    // MARK: - Constrains configuration
    
    private func addConstrainsXib() {
        
        // bgView
        bgView.translatesAutoresizingMaskIntoConstraints = false
        bgView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 10).isActive = true
        bgView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -10).isActive = true
        bgView.heightAnchor.constraint(equalToConstant: 390).isActive = true
        bgView.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 5).isActive = true
        
        
        // carName
        carName.translatesAutoresizingMaskIntoConstraints = false
        carName.topAnchor.constraint(equalTo: bgView.topAnchor, constant: 15).isActive = true
        carName.leadingAnchor.constraint(equalTo: bgView.leadingAnchor, constant: 10).isActive = true
        
        
        // hideButton
        hideButton.translatesAutoresizingMaskIntoConstraints = false
        hideButton.topAnchor.constraint(equalTo: bgView.topAnchor, constant: 15).isActive = true
        hideButton.trailingAnchor.constraint(equalTo: favButton.leadingAnchor, constant: -15).isActive = true
        
        
        // favButton
        favButton.translatesAutoresizingMaskIntoConstraints = false
        favButton.topAnchor.constraint(equalTo: bgView.topAnchor, constant: 15).isActive = true
        favButton.trailingAnchor.constraint(equalTo: bgView.trailingAnchor, constant: -15).isActive = true
        
        
        // priceBYN
        priceBYN.translatesAutoresizingMaskIntoConstraints = false
        priceBYN.topAnchor.constraint(equalTo: carName.bottomAnchor, constant: 5).isActive = true
        priceBYN.leadingAnchor.constraint(equalTo: bgView.leadingAnchor, constant: 10).isActive = true
        
        
        // priceUSD
        priceUSD.translatesAutoresizingMaskIntoConstraints = false
        priceUSD.topAnchor.constraint(equalTo: carName.bottomAnchor, constant: 11).isActive = true
        priceUSD.leadingAnchor.constraint(equalTo: priceBYN.trailingAnchor, constant: 4).isActive = true
        
        
        // carImages
        carImages.translatesAutoresizingMaskIntoConstraints = false
        carImages.topAnchor.constraint(equalTo: priceBYN.bottomAnchor, constant: 15).isActive = true
        carImages.leadingAnchor.constraint(equalTo: bgView.leadingAnchor, constant: 10).isActive = true
        carImages.trailingAnchor.constraint(equalTo: bgView.trailingAnchor, constant: -10).isActive = true
        carImages.heightAnchor.constraint(equalTo: bgView.heightAnchor, multiplier: 0.5).isActive = true
        
        
        // aboutCarText
        aboutCarText.translatesAutoresizingMaskIntoConstraints = false
        aboutCarText.topAnchor.constraint(equalTo: carImages.bottomAnchor, constant: 15).isActive = true
        aboutCarText.leadingAnchor.constraint(equalTo: bgView.leadingAnchor, constant: 10).isActive = true
        aboutCarText.trailingAnchor.constraint(equalTo: bgView.trailingAnchor, constant: -10).isActive = true
        
        
        // geoAndDate
        geoAndDate.translatesAutoresizingMaskIntoConstraints = false
        geoAndDate.topAnchor.constraint(equalTo: aboutCarText.bottomAnchor, constant: 15).isActive = true
        geoAndDate.leadingAnchor.constraint(equalTo: bgView.leadingAnchor, constant: 10).isActive = true
        
        
        // decorLine
        decorLine.translatesAutoresizingMaskIntoConstraints = false
        decorLine.leadingAnchor.constraint(equalTo: bgView.leadingAnchor, constant: 10).isActive = true
        decorLine.trailingAnchor.constraint(equalTo: bgView.trailingAnchor, constant: 0).isActive = true
        decorLine.topAnchor.constraint(equalTo: geoAndDate.bottomAnchor, constant: 15).isActive = true
        decorLine.heightAnchor.constraint(equalToConstant: 1).isActive = true
        
        
        // lisingLabel
        lisingLabel.translatesAutoresizingMaskIntoConstraints = false
        lisingLabel.topAnchor.constraint(equalTo: decorLine.bottomAnchor, constant: 10).isActive = true
        lisingLabel.leadingAnchor.constraint(equalTo: bgView.leadingAnchor, constant: 10).isActive = true
        
        
        // lisingStartPrice
        lisingStartPrice.translatesAutoresizingMaskIntoConstraints = false
        lisingStartPrice.topAnchor.constraint(equalTo: decorLine.bottomAnchor, constant: 10).isActive = true
        lisingStartPrice.trailingAnchor.constraint(equalTo: bgView.trailingAnchor, constant: -10).isActive = true
        
    }
    
    
    // MARK: - UI settings
    
    private func uiSettingsXib() {
        
        // bgView
        bgView.backgroundColor = .cellBackground
        bgView.layer.cornerRadius = 10
        
        
        // carName
        carName.font = UIFont(name: "HelveticaNeue-Medium", size: 16)
        
        
        // hideButton
        hideButton.setImage(UIImage(systemName: "eye.slash"), for: .normal)
        hideButton.tintColor = UIColor(red: 157/255, green: 178/255, blue: 197/255, alpha: 1)
        
        
        // favButton
        favButton.setImage(UIImage(systemName: "bookmark"), for: .normal)
        favButton.tintColor = UIColor(red: 157/255, green: 178/255, blue: 197/255, alpha: 1)
        
        
        // priceBYN
        priceBYN.font = UIFont(name: "HelveticaNeue-CondensedBlack", size: 20)
        
        
        // priceUSD
        priceUSD.font = UIFont(name: "HelveticaNeue-Medium", size: 14)
        priceUSD.textColor = .lightGray
    
        
        // aboutCarText
        aboutCarText.font = UIFont(name: "HelveticaNeue", size: 14)
        
        
        // geoAndDate
        geoAndDate.font = UIFont(name: "HelveticaNeue", size: 14)
        geoAndDate.text = "Минск ⋅ 11 окт"
        geoAndDate.textColor = .lightGray
        
        
        // decorLine
        decorLine.backgroundColor = UIColor(red: 234/255, green: 235/255, blue: 242/255, alpha: 1)
        
        
        // lisingLabel
        lisingLabel.font = UIFont(name: "HelveticaNeue", size: 14)
        lisingLabel.textColor = UIColor(red: 62/255, green: 87/255, blue: 128/255, alpha: 1)
        lisingLabel.text = "Лизинг"
        
        
        // lisingStartPrice
        lisingStartPrice.font = UIFont(name: "HelveticaNeue-Bold", size: 14)
        lisingStartPrice.textColor = UIColor(red: 62/255, green: 87/255, blue: 128/255, alpha: 1)
        
    }
    
    
    // MARK: Car configurater
    
    func carConfig(with car: CarsConstructor) {
        carName.text = car.name
        priceBYN.text = "\(car.price)"
        priceUSD.text = "\(car.price/3)"
        lisingStartPrice.text = "\(car.price/200)"
        aboutCarText.text = "car.description"
    }
    
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}

extension CarAdTableViewCell: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CarAdCollectionViewCell", for: indexPath) as? CarAdCollectionViewCell {
            cell.setImage(UIImage(named: "AudiA7-Photo1")!)
            return cell
        }
        return UICollectionViewCell()
    }
    
    
}

extension UIView {
    func addSubviews(_ views: UIView...) {
        views.forEach(addSubview)
    }
}
