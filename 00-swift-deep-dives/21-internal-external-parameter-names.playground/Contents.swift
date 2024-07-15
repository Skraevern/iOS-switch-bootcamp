import UIKit

// parameter names


 func myFunc(name: String) {
    print(name)
 }
 
func myFunc2(externalName internalName: String) {
    print(internalName) // Lars
}
 myFunc2(externalName: "Lars")

func myFunc3(_ internalName: String) {
    print(internalName) // Larsern
}
myFunc3("Larsern")
 


