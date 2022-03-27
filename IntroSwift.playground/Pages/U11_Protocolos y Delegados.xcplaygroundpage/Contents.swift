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



/** PROTOCOLO DELEGADO **/

protocol FriendsDelegate: AnyObject {
    func orderPizza()
    func takeABreak()
}

class FriendsFuncDelegate {
    weak var delegate: FriendsDelegate? = nil
    
    func pizza() {
        delegate?.orderPizza()
    }
    
    func sleep() {
        delegate?.takeABreak()
    }
}

class FriendsFunctions: FriendsDelegate {
    func orderPizza() {
        print("He pedido una pizza")
    }
    
    func takeABreak() {
        print("Me voy a dormir")
    }
}

let friendsFuncDelegate = FriendsFuncDelegate()
let friendsFunction = FriendsFunctions()

friendsFuncDelegate.delegate = friendsFunction
friendsFuncDelegate.pizza()
friendsFuncDelegate.sleep()
