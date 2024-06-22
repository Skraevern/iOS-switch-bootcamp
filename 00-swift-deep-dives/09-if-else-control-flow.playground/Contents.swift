import UIKit
/*
== is equal to
!= is not equal to
> is greater than
< is lesser than
>= is greater or equal to
<= is lesser or equal to
 
 && AND
 || OR
 ! NOT
*/

func loveCalculator() {
    let loveScore = Int.random(in: 0...100)
    print(loveScore)
    
    if loveScore > 80 {
        print("You love each other like Kanye loves Kanye")
    } else if loveScore >= 40 {
        print("You go togheter like Coke and Mentos")
    } else {
        print("You`ll forever be alone")
    }
}

loveCalculator()
