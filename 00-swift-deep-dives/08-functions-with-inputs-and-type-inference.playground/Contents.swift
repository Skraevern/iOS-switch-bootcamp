import UIKit

func greeting() {
    print("Yo!")
}

greeting()

var myAge = 12
// myAge = "Yo" Cannot assign value of type 'String' to type 'Int'

var myAge2 :String = "UYO"



func getMilk(numBottles :Int) {
    var cost = numBottles * 3
    print(cost)
}

getMilk(numBottles: 4)




func greeting2(whoToGreet: String) {
    print("Hello \(whoToGreet)")
}

greeting2(whoToGreet: "Lars")

