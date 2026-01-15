import Foundation
@Observable
class DataManager {
    var cars = Cars(cars: [Car]())
    
    init() {
        cars = load("cars.json")
    }
    
    func getCars() -> [Car] {
        return cars.cars
    }
     
    func loadCars() async {
       
        
        do {
            print("⏳ Loading car data...")
            try await Task.sleep(for: .seconds(1))
            
            //load cars
            print("✅ Data loaded successfully.")
        } catch {
            print("❌ Failed to load cars:", error)
        }
        
        
    }
    
    func sortCars(sorteervoorkeur: String) -> [Car] {
        let sorted: [Car]
        if sorteervoorkeur == "Price" {
            sorted = cars.cars.sorted(by: { $0.price < $1.price })
        } else if sorteervoorkeur == "Make" {
            sorted = cars.cars.sorted(by: { $0.model < $1.model })
        } else {
            sorted = cars.cars.sorted(by: { $0.year < $1.year })
        }
        return sorted
    }
    
}

func load<T: Decodable>(_ filename: String) -> T {
    let data: Data
    
    guard let file = Bundle.main.url(forResource: filename, withExtension: nil)
    else {
        fatalError("Couldn't find \(filename) in main bundle.")
    }
    
    do {
        data = try Data(contentsOf: file)
    } catch {
        fatalError("Couldn't load \(filename) from main bundle:\n\(error)")
    }
    
    do {
        let decoder = JSONDecoder()
        return try decoder.decode(T.self, from: data)
    } catch {
        fatalError("Couldn't parse \(filename) as \(T.self):\n\(error)")
    }
}
