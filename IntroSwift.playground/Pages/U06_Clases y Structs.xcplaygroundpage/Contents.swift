/** CLASES * */
class Friends {
    var title: String
    let coffeShop: String
    var actors: [Actor]?
    //   inicializador = constructor. self == this
    init(title: String, coffeShop: String){
        self.title = title
        self.coffeShop = coffeShop
    }
    
    // inicializadores de conveniencia
    convenience init(title: String, coffeShop: String, actors: [Actor]){
        // llamamos a init == super()
        self.init(title: title, coffeShop: coffeShop)
        // propiedad adicional
        self.actors = actors
    }
}

// Creando instancia de clase
let serie = Friends(title: "Friends", coffeShop: "Central Perk")
// creando instancia copia de otra instancia. Se hace por referencia
let serie2 = serie
serie2.title = "Modern Family" // se modifica le valor en las dos instancias


let serie3 = Friends(title: "Friends", coffeShop: "Central Perk", actors: [])

/**STRUCTS * */
struct Actor {
    var nombre: String
    var friendsName: String
}

// Creando instancia de struct
let actor = Actor(nombre: "Jennifer Aniston", friendsName: "Rachel Green")
// creando otra instancia. Se copia valores, no se hace por referencia
var actor2 = actor
actor2.nombre = "JA"

actor.nombre
actor2.nombre

serie3.actors?.append(actor)
serie3.actors?.append(actor2)
serie3.actors?.first?.nombre
serie3.actors?.last?.nombre

serie3.actors?.append(
    contentsOf: [
        Actor(nombre: "Matt LeBlanc", friendsName: "Joey Tribbiani"),
        Actor(nombre: "Lisa Kudrow", friendsName: "Phoebe Bufay"),
        Actor(nombre: "Courten Cox", friendsName: "Monica Geller"),
        Actor(nombre: "Matthew Perry", friendsName: "Chandler Bing")
    ]
)

serie3.actors

// recorrer
if let actors = serie3.actors {
    for actor in actors {
        print(actor.nombre)
    }
}
