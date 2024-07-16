import UIKit

/*
extension SomeType {
    // Add new functionality
}
*/

var myDouble = 3.14159

let myRoundedDouble = String(format: "%.1f", myDouble) // 3,1

myDouble.round() // 3
myDouble = 3.14159

extension Double {
    // Round to a certein decimal places
    func round(to places: Int) -> Double {
        let precisionNum = pow(10, Double(places))
        var n = self
        n = n * precisionNum
        n.round()
        n = n / precisionNum
        return n
    }
}

myDouble.round(to: 3) // 3.142
myDouble.round(to: 1) // 3.1


let button = UIButton(frame: CGRect(x: 0, y: 0, width: 50, height: 50))
button.backgroundColor = .red


button.layer.cornerRadius = 25
button.clipsToBounds = true


extension UIButton {
    func makeCircular() {
        self.layer.cornerRadius = 25
        self.clipsToBounds = true
    }
}

let button2 = UIButton(frame: CGRect(x: 0, y: 0, width: 50, height: 50))
button2.backgroundColor = .blue
button2.makeCircular()

