import UIKit

struct Town {
    let name: String
    var citizens: [String]
    var resources: [String: Int]
    
    init(townName: String, people: [String], stats: [String: Int]) {
        name = townName
        citizens = people
        resources = stats
    }
    func fortify() {
        print("Defences increased")
    }
}

var anotherTown = Town(townName: "Town2", people: ["Person1", "Person2"], stats: ["Coconuts" : 100])

print(anotherTown)
// Town(name: "Town2", citizens: ["Person1", "Person2"], resources: ["Coconuts": 100])

anotherTown.citizens.append("Wilson")
print(anotherTown.citizens)
// ["Person1", "Person2", "Wilson"]

struct Town2 {
    let name: String
    var citzens: String
    var resourves: [String: Int]
    
    init(name: String, citzens: String, resourves: [String : Int]) {
        // name = name
        // citizens = citizens
        //resources = resources
        // Does not work
        
        //Use:
        self.name = name
        self.citzens = citzens
        self.resourves = resourves
    }
    
}

var ghostTown = Town2(name: "Ghosty McGhostface", citzens: "None", resourves: ["Tumbleweed": 1])
