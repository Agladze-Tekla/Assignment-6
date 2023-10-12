import UIKit



//1
class SuperEnemy {
    let name: String
    var hitPoints: Int
    let intro: String
    
    init(name: String, hitPoints: Int, intro: String) {
        self.name = name
        self.hitPoints = hitPoints
        self.intro = intro
    }
}

//2
protocol Superhero {
    var name: String { get }
    var alias: String { get }
    var isEvil: Bool { get }
    var superPowers: [String: Int] { get }
    func attack(target: SuperEnemy) -> Int
    mutating func performSuperPower(target: SuperEnemy) -> Int
}

//3
extension Superhero {
    func superInfo() {
        print(name, alias, isEvil)
        print(superPowers)
    }
}

//4
struct KO: Superhero {
    var name = "Kaio O. Kinciad"
    var alias = "K.O"
    var isEvil = false
    var superPowers = ["Power-Fist Fireball": 50, "Power Fist": 35, "Power Battle Yodel": 35, "Power Spirit Strike": 45]
    
    func attack(target: SuperEnemy) -> Int {
        let damagePoint =  Int.random(in: 20 ... 40)
        target.hitPoints -= damagePoint
        return target.hitPoints
    }
    
    mutating func performSuperPower(target: SuperEnemy) -> Int {
        let randomPower = superPowers.randomElement()!.key
        let powerDamage = superPowers[randomPower]!
        target.hitPoints -= powerDamage
        return target.hitPoints
    }
}

struct Enid: Superhero {
    var name = "Enid Mettle"
    var alias = "Enid"
    var isEvil = false
    var superPowers = ["Shadow Spirit": 60, "Fire Generation": 50, "Power Foot Fireball": 50, "Ice Breath": 30]
    
    func attack(target: SuperEnemy) -> Int {
        let damagePoint =  Int.random(in: 30 ... 40) //Changed it from 20-40 to 30-40 cause she's really strong
        target.hitPoints -= damagePoint
        return target.hitPoints
    }
    
    mutating func performSuperPower(target: SuperEnemy) -> Int {
        let randomPower = superPowers.randomElement()!.key
        let powerDamage = superPowers[randomPower]!
        target.hitPoints -= powerDamage
        return target.hitPoints
    }
}

struct Radicles: Superhero {
    var name = "Radicles X"
    var alias = "Rad"
    var isEvil = false
    var superPowers = ["Power Beam": 55, "Laser Beam": 80, "Freeze Beam": 45]
    
    func attack(target: SuperEnemy) -> Int {
        let damagePoint =  Int.random(in: 20 ... 40)
        target.hitPoints -= damagePoint
        return target.hitPoints
    }
    
    mutating func performSuperPower(target: SuperEnemy) -> Int {
        let randomPower = superPowers.randomElement()!.key
        let powerDamage = superPowers[randomPower]!
        target.hitPoints -= powerDamage
        return target.hitPoints
    }
}

//5
class SuperheroSquad<T: Superhero> {
    var superheroes: [T]
    
    init(superheroes: [T]) {
        self.superheroes = superheroes
    }
    
    func introduction() {
        print("And here are our trusty plaza heroes!")
        for superhero in superheroes {
            print(superhero.name.uppercased())
        }
    }
}

//6

print("Ready...")
print("Set...")
print("FIGHT!")
 
/*
func simulateShowdown (squad: SuperheroSquad<T: Superhero>, enemy: SuperEnemy) {
    while enemy.hitPoints != 0 || outOfPowers(squad) == true {
        
    }
}
 */
