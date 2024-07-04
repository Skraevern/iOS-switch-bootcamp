import UIKit

struct Town {
    let name: String
    var citizens: [String]
    var resources: [String :Int]
    
    init(name: String, citizens: [String], resources: [String : Int]) {
        self.name = name.uppercased()
        self.citizens = citizens
        self.resources = resources
    }
    /*
    func harvestRice() {
        resources["Rice"] = 100 // Cannot assign through subscript: 'self' is immutable
    } */
    mutating func harvestRice() {
        resources["Rice"] = 100
    }
    
}

var myTown = Town(name: "Angelaland", citizens: ["Angela", "Jack Bauer"], resources: ["Wool": 75])

myTown.citizens.append("Keanu Reeves")

print("People of \(myTown.name): \(myTown.citizens)")
