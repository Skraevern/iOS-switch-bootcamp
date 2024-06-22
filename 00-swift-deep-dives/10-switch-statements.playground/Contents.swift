import UIKit

let hardness = "Hard"

switch hardness {
case "Soft":
    print(5)
case "Medium":
    print(7)
case "Hard":
    print("12")
default:
    print("Error")
}

/*
 a...b  Closed range
 a..<b  Half Open Range
 ...b   One sided range
 */

let loveScore = Int.random(in: 1...100)
print(loveScore)

if loveScore > 80 {
    print("You love each other like Kanye loves Kanye")
} else if loveScore >= 40 {
    print("You go togheter like Coke and Mentos")
} else {
    print("You`ll forever be alone")
}

switch loveScore {
case 81...100:
    print("You love each other like Kanye loves Kanye")
case 41..<80:
    print("You go togheter like Coke and Mentos")
case ...40:
    print("You`ll forever be alone")
default:
    print("Error, lovescore out of range")
}
