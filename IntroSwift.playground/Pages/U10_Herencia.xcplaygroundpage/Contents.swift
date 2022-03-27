
class Person {
    var name: String = ""
    
    func sayHello() {
        print("Hola Persona!")
    }
}


//clase que hereda de Person
class ActorPerson: Person {
    var films: [String] = []
    
    //sobrescritura
    override func sayHello() {
        print("Vamos a saludar")
        super.sayHello()// llamada al método de la clase padre
        
    }
}

let actorPerson = ActorPerson()
actorPerson.name = "Adriel"
actorPerson.films = ["Firends", "Joey"]
actorPerson.sayHello()

class NormalPerson: Person {
    var lastName: String = ""
    override func sayHello() {
        print("Hola \(name) \(lastName)")
    }
}

let normalPerson = NormalPerson()
normalPerson.name = "Adriel"
normalPerson.lastName = "Leonardo"
normalPerson.sayHello()
