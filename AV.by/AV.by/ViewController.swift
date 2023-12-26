import UIKit

class ViewController: UIViewController {
   
    // MARK: - Properties
    private let listOfCarsAdTableView = UITableView()
    private let cars = CarsConstructor.getMockData()
    
    // MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        listOfCarsAdTableView.delegate = self
        listOfCarsAdTableView.dataSource = self
        listOfCarsAdTableView.register(CarAdTableViewCell.self, forCellReuseIdentifier: "CarAdTableViewCell")
        listOfCarsAdTableView.backgroundColor = .background
        view.addSubview(listOfCarsAdTableView)
        addConstrains()
    }
    
    // MARK: - Constrains config
    private func addConstrains() {
        listOfCarsAdTableView.translatesAutoresizingMaskIntoConstraints = false
        listOfCarsAdTableView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        listOfCarsAdTableView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        listOfCarsAdTableView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        listOfCarsAdTableView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
    }
    
}

// MARK: - Helpers
extension ViewController: UITableViewDelegate, UITableViewDataSource {
  
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cars.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "CarAdTableViewCell", for: indexPath) as? CarAdTableViewCell else {return UITableViewCell()}
        let car = cars[indexPath.row]
        cell.carConfig(with: car)
        return cell
    }
    
}
