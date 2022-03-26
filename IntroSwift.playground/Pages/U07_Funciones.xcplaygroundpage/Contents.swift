/** Funciones **/

// Funcion sin parámetro
func sayHelloJoey() {
    print("¿Cómo va eso?")
}
// llamada a la función
sayHelloJoey()


// Función con parámetros
func sayHello(name: String){
    print("¿Cómo va eso \(name)?")
}
//sayHello(name: "Adriel")


// Función que devuelve valor (sobrecarga)
func sayHello(name: String) -> String {
    return "¿Cómo va eso \(name)?"
}
var mensaje: String = sayHello(name: "Adriel")


// Función con etiqueta y valor por defecto
func sayHello(to name: String = "Moreno"){
    print("¿Cómo va eso \(name)?")
}
sayHello(to: "Adriel")
sayHello()


// Función con opcional, nil y guard let
func sayHello2(_ name: String? = nil){
    guard let nameNotNil = name else {
        return
    }
    print("¿Cómo va eso \(nameNotNil)?")
}
sayHello2()
