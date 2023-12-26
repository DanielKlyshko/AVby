import Foundation
import UIKit.UIImage

struct CarsConstructor {
    var name: String
    var price: Int
    var year: Int
    var transmission: String
    var engineVolume: Double
    var typeOfFuel: String
    var carBody: String
    var milage: Int
    var carImage: UIImage?
    var vin: Bool
    var video: Bool
    
    static func getMockData() -> [CarsConstructor] {
        return [
            CarsConstructor(name: "Audi A7 Type 4K8", price: 169631, year: 2019, transmission: "робот", engineVolume: 3.0, typeOfFuel: "бензин", carBody: "лифтбэк", milage: 92000, carImage: UIImage(named: "AudiA7-Photo1"), vin: true, video: true)
            
            ]
    }
    
}
