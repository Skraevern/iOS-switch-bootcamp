protocol AdvancedLifeSupport {
    func performCpr()
}

class EmergencyCallHandler {
    var delegate: AdvancedLifeSupport?
    
    func assessSituation() {
        print("Can you tell me what happend?")
    }
    func medicalEmergency() {
        delegate?.performCpr()
    }
}

struct paramedic: AdvancedLifeSupport {
    init(handler: EmergencyCallHandler) {
        handler.delegate = self // Picks up pager/Bleep/Ready to work
    }
    
    func performCpr() {
        print("Perform chest compressions")
    }
}

let emilio = EmergencyCallHandler()
let pete = paramedic(handler: emilio)

emilio.assessSituation() // Can you tell me what happend?
emilio.medicalEmergency() // Perform chest compressions // from pete

class Doctor: AdvancedLifeSupport {
    init(handler: EmergencyCallHandler) {
        handler.delegate = self
    }
    
    func performCpr() {
        print("Perform chest compressions")
    }
    func useStetoscope() {
        print("Listen for heartbeats")
    }
}
class Surgeon: Doctor {
    override func performCpr() {
        super.performCpr()
        print("Sings staying alive")
    }
    func useElectricDrill() {
        print("Go Brrr.")
    }
}

let angela = Surgeon(handler: emilio)
emilio.medicalEmergency() //Perform chest compressions //Sings staying alive

