import Foundation

struct Actor {
    var nombre: String
    var friendsName: String
}


/** TYPEALIAS * */
typealias Actors = [Actor]
let actors: Actors = []

typealias Age = Int
let actorAge: Age = 35

typealias Name = String
let username: Name = "Adriel"

typealias AudioSample = UInt16
var maxAmplitudeFound = AudioSample.max



/** GENÉRICOS * */
// T puede ser cualquir tipo de dato
func cambiarValor<T>(_ a: inout T, _ b: inout T){
    let tempA = a
    a = b
    b = tempA
}

var valueA = "Adriel"
var valueB = "Leonardo"

// & indica que se modifica el valor dentro de la función
cambiarValor(&valueA, &valueB)
print("valueA = \(valueA) and valueB = \(valueB)")



// otro ejemplo
struct Stack<Element> {
    var items = [Element]()
    
    mutating func push(_ item: Element) {
        items.append(item)
    }
    
    mutating func pop() -> Element {
        return items.removeLast()
    }
}

var stack = Stack<Int>()
stack.push(1)
stack.push(2)
stack.push(3)
stack.items
