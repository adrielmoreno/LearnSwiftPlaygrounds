/** Tuplas* */
let mailbox = ("Adriel", 35)
mailbox.0
mailbox.1

// Tupla asignandole alias
let mailboxAlias: (name: String, number: Int) = ("Adriel", 35)
mailboxAlias.name
mailboxAlias.number



/** Enum* */
// enum báscio. CaseIterable permite que se pueda iterar en el enum
enum LetterType: CaseIterable {
    case love
    case business
    case family
    case friends
}

var letterType: LetterType = .business
// otra forma de declarar accediendo al enum
var letterType2 = LetterType.family


// accediendo a todos los casos. El enum debe conformar el protocolo CaseIterable
LetterType.allCases

//asociando valor a los casos
enum MailboxProperties {
    case capacity(Int)
    case address(String)
}

var mailboxProperty = MailboxProperties.address("Valladolid")
mailboxProperty = MailboxProperties.capacity(500)

// Enum definiendo el tipo
enum LetterSizes: Int {
    case small = 5 // se autincrementan los demás valores
    case medium
    case big
}

var letterSize = LetterSizes(rawValue: 7) // big
