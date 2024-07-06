class Dragon: Enemy {
    override init() {
        super.init()
        self.health = 1000
        self.attackStrength = 100
    }
    override func move() {
        print("Fly forwards")
    }
    override func attack() {
        super.attack()
        print("Spit fire, does 10 damage")
    }
    var wingspan = 5
    
    func speech() {
        print("My teeth are swords!")
    }
}
