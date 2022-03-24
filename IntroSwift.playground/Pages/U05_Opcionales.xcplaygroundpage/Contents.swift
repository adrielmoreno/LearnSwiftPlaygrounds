/*** Opcionales***/
var isSended: Bool? = nil
isSended = true

var lettersOptional: [String]? = []

lettersOptional?.count
//lettersOptional!.count //forzamos la salida

/*** Opcionales con if let ***/
// otra forma de acceso. si count = nil se ejecuta el else
if let count = lettersOptional?.count {
    print("Tienes \(count) cartas")
} else {
    print("No hemos encontrado cartas")
}

// almacenamos el valor en count y agregamos una condición
if let count = lettersOptional?.count, count > 0 {
    print("Tienes \(count) cartas")
} else {
    print("No hemos encontrado cartas")
}

// desempaquetando más de un valor
if let count = lettersOptional?.count, let letterSended = isSended {
    print("Tienes \(count) cartas y se enviarn \(letterSended)")
} else {
    print("No hemos encontrado cartas")
}


/*** Opcionales con guard let ***/
// guard funciona con funciones
var guardBool: Bool? = nil
func comprobarGuard(){
    // si el valor es nil se ejecuta esta parte
    guard let value = guardBool else {
        print("El valor es nil")
        return // sale, para no ejecutar mas sentencias
    }
    print("El valor es \(value)")
}
comprobarGuard()


// valor por defecto con opcional
let letCount = lettersOptional?.count ?? 0
