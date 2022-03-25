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


// Función que devuelve valor
func sayHello(name: String) -> String {
    return "¿Cómo va eso \(name)?"
}
var mensaje: String = sayHello(name: "Adriel")
print(mensaje)
