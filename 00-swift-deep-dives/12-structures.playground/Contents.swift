import UIKit

// Structures = custom data types
struct MyStruct {   } // Capitalize first. Like Int, Float, String

struct Town {
    let name = "Angelaland"
    var citizens = ["Angela", "Jack Bauer", "JimJohnny"]
    var resources = ["Grain": 100, "Ore": 42, "Wool": 75]
    
    func fortify() {
        print("Defences increased!")
    }
}
var myTown = Town()

print(myTown.self)
// Town(name: "Angelaland", citizens: ["Angela", "Jack Bauer", "JimJohnny"], resources: ["Grain": 100, "Ore": 42, "Wool": 75])

print(myTown.citizens)
// ["Angela", "Jack Bauer", "JimJohnny"]

print(myTown.name)
// Angelaland

print(myTown.resources)
// ["Grain": 100, "Ore": 42, "Wool": 75]

print("\(myTown.name) has \(myTown.resources["Grain"]!) bags of grain.")
// Angelaland has 100 bags of grain.

myTown.citizens.append("Keanu Reeves")
print(myTown.citizens.count)
// 4

myTown.fortify()
// Defences increased!

myTown.name = "Change"
// Cannot assign to property: 'name' is a 'let' constant
