protocol CanFly {
    func fly()
}

class Bird {
    var isFemale = true
    
    func layEggs() {
        if isFemale {
            print("The bird makes a new bird in a shell")
        }
    }
}


class Eagle: Bird, CanFly {
    func fly() {
        func fly() {
            print("Flaps its wings and flies through the skies")
        }
    }
    
    func sour() {
        print("Eagle glides")
    }
}

let myEagle = Eagle()
print(myEagle.layEggs) //The bird makes a new bird in a shell


class Penguin: Bird {
    func swim() {
        print("Penguin swims")
    }
}

let myPenguin = Penguin()

//myPenguin.fly() // Flaps its wings and flies through the skies ???

struct FlyingMuseun {
    func flyingDemoes(flyingObject: CanFly) {
        flyingObject.fly()
    }
}

let museum = FlyingMuseun()
museum.flyingDemoes(flyingObject: myEagle) //Flaps its wings and flies through the skies
museum.flyingDemoes(flyingObject: myPenguin) //Argument type 'Penguin' does not conform to expected type 'CanFly'


class Airplane: Bird, CanFly {
    func fly() {
        func fly() {
            print(" flies through the skies")
        }
    }
}
let myAirplane = Airplane()
museum.flyingDemoes(flyingObject: myAirplane)
myAirplane.layEggs()


