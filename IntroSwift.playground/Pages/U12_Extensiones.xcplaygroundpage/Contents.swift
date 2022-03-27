import Foundation

/** EXTENSIONES * */

// extensión de Int
extension Int {
    mutating func square() {
        self = self * self
    }
    
    // comprueba si la instancia es mayor que el no.
    // pasado por parámetro
    func isGreaterThan(other: Int) -> Bool {
        return self > other
    }
}
var age = 5
age.square()
age.isGreaterThan(other: 20)


// extension de String
extension String {
    func numberOf(char: String) -> Int {
        return self.filter { stringChar -> Bool in
            return char.compare("\(stringChar)") == .orderedSame
        }.count
    }
}
var stringExtension = "Curso de Swift desde cero"
stringExtension.numberOf(char: "o") // 2


// Clase que extiende e implementa un protocol
protocol ActorFriendProtocol {
    var name: String { get set}
    var films: [String] {get set}
    func sayHello()
}

class FriendsExtension {
//    propiedades del ActorFriendProtocol
    var name: String = ""
    var films: [String] = []
    
    var lastname: String = ""
    var age: Int = 0
}

extension FriendsExtension: ActorFriendProtocol {
    var nameComplete: String {
        return "\(name) \(lastname)"
    }
    
    func sayHello() {
        
    }
}
