// struct de la u6 clases y structs
struct Actor {
    var nombre: String
    var friendsName: String
}
let actors: [Actor] = [
    Actor(nombre: "Matt LeBlanc", friendsName: "Joey Tribbiani"),
    Actor(nombre: "Lisa Kudrow", friendsName: "Phoebe Bufay"),
    Actor(nombre: "Courten Cox", friendsName: "Monica Geller"),
    Actor(nombre: "Matthew Perry", friendsName: "Chandler Bing")
]

/** CLOSURES * */

// closure forEach:

// actors.forEach { (actor) in // no es necesario los ()
actors.forEach { actor in
    print(actor.nombre)
}

// simplificado con $0
actors.forEach { print($0.friendsName)}


// Función pasando por entrada un valor y utilizar
// closure para imprimir ese valor
func sayHelloActors(to name: String) {
    actors.forEach {   print("Saludos de \($0.nombre) a \(name)")}
}
sayHelloActors(to: "Adriel")

// variable con listado de closure
var completionHandlers = [(String) -> Void]() // no devuelve nada

// Función que recibe un closure por parámetro llamado callback
// y lo agrega al listado de closures (completionHandlers)
// @escaping no destruye el closure al finalizar la función
func loadJoeyPizza(callback: @escaping (String) -> Void) {
    completionHandlers.append(callback)
}
//ejemplo de uso. Sólo se almacena, no se ejecuta.
loadJoeyPizza { name in
    print("Joey ha comido \(name)")
}
completionHandlers.forEach { $0("Pizza")}



// closure filter:

// let actoresFiltrados = actors.filter { $0.nombre.count > 11}
let actoresFiltrados = actors.filter { (actor) -> Bool in
    return actor.nombre.count > 11
}
// Verificamos los valores devueltos por filter
actoresFiltrados.forEach { print($0.nombre)}


// closure map:

// Con map podemos usar [T] = Tipo genérico
//let nombres: [String] = actors.map { actor -> String in
//    return actor.nombre
//}
let nombres: [String] = actors.map { $0.nombre}


// closure compactMap:

//no devulve los valores que sean nil
let nombreSinNil: [String] = actors.compactMap { $0.nombre}


// closure first:

// uso con condición
let actor = actors.first { $0.nombre.contains("l")}

// closure reduce:

// Sirve para combinar elementos
var numbers = [1,5,3,7,10]
// (0): valor inicial
// sum: parámetro de entra
// number: valor actual
let result = numbers.reduce(0) { sum, number -> Int in
    return sum + number
}
//let result = numbers.reduce(0, { $0 + $1 })
result

/** Más opciones * */
//actors.last(where: <#T##(Actor) throws -> Bool#>)
//actors.removeAll(where: <#T##(Actor) throws -> Bool#>)

