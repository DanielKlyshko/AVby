//
//  ViewController.swift
//  AV.by
//
//  Created by Daniel Klyshko on 12.12.23.
//

import UIKit

class ViewController: UIViewController {

    private let listOfCarsAdTableView = UITableView()
    private let cars = CarsConstructor.getMockData()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }


}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
  
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cars.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "XibTableViewCell", for: indexPath) as? XibTableViewCell else {return UITableViewCell()}
        cell.delegate = self
        let car = cars[indexPath.row]
        cell.carConfig(with: car)
        cell.cellIndex = indexPath
        return cell
    }
    
}
