/** PROTOCOLOS **/
// son como las interfaces en java

protocol ActorFriendProtocol {
    var name: String { get set}
    var films: [String] {get set}
    func sayHello()
}


class ActorProtocol: ActorFriendProtocol {
    //    Implementación del protocol:
    var name: String = ""
    var films: [String] = []
    func sayHello() {
        print("Hola Actor protocol!")
    }
    
    //    propiedades propias de la clase
    var lastname: String = ""
    func sayGoodbye(){
        print("Adiós Actor protocol")
    }
}

let actorProtocol = ActorProtocol()
actorProtocol.sayHello()
actorProtocol.name = "Adriel"
actorProtocol.lastname = "Moreno"
actorProtocol.sayGoodbye()
