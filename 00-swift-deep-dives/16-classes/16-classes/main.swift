
let skeleton = Enemy()
print(skeleton.health) //100
skeleton.move() //Walk forward.
skeleton.attack() //Land a hit, does 10 damage

let skeleton2 = Enemy()
let skeleton3 = Enemy()

let dragon = Dragon()
dragon.move() //Flyes forwards.
print(dragon.wingspan) //5
print(dragon.health) //1000
dragon.attack() //Land a hit, does 100 damage //Spit fire, does 10 damage
dragon.speech() //My teeth are swords!
