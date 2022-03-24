/*** COLLECIONES DE DATOS***/

/*** ARRAYS ***/
// Constante de tipo colección de String con valor vacío
var letters: [String] = []
letters.count

// Agregar elementos
letters.append("Primera carta")
letters.append("Segunda carta")
letters.count

// Acceder por poisción
letters[0]
letters[1]

// Eliminar elemento
letters.remove(at: 0)
letters.removeAll()

letters.isEmpty

let lettersPrice = [9.99, 3.95, 2.94, 0.99] //Double por defecto y constante, es inmutable

var lettersPrice2: [Float] = [9.99, 3.95, 2.94, 0.99]
lettersPrice2.append(contentsOf: [5.5, 8.1, 90.9]) // agregar lista de elementos a la colection
lettersPrice2.sort() // ordenar la lista




/*** DICCIONARIOS ***/
// Declarando diccionario [key:value] y lo inicializamos a vacío
var lettersDictionary: [Int:String] = [:]

lettersDictionary.count

let keyDict = 1

lettersDictionary[keyDict] = "Carta a Adriel"
lettersDictionary.count

lettersDictionary.isEmpty
lettersDictionary[keyDict]

lettersDictionary[10]

lettersDictionary.removeValue(forKey: keyDict)
lettersDictionary[keyDict]

lettersDictionary = [1:"Carta a Adriel", 9:"Carta a Raúl"]
lettersDictionary[10] = "Carta a Pedro"


lettersDictionary.keys
lettersDictionary.values



/*** SETs ***/
// Declaración de colleción de datos tipo Set, que contiene
// elementos de tipo String. Además, inicializado vacío
var letterSet: Set<String> = []

letterSet.count
letterSet.insert("Carta a Adriel con Set")
letterSet.isEmpty

// comprobar si existe un elemento
letterSet.contains("Carta a Adriel con Set")

letterSet.remove("Carta a Adriel con Set")
letterSet.count

letterSet = ["Carta a Dwayne",
             "Carta a Dylan",
             "Carta a Adriel"]
