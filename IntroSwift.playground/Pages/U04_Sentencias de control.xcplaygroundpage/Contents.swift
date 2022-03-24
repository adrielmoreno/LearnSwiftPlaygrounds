let lettersCoount = 4

/*** if else  ***/
if (lettersCoount > 5) {
    print("Tienes cartas en el buzón")
} else if (lettersCoount > 0) {
    print("Tienes algunas caratas en el buzón")
} else {
    print("No tienes caratas en el buzón")
}



/*** switch ***/
let postmanCount = 2

switch (postmanCount) {
    case 0: print("No hay carteros")
    case 1...5: print("Hay menos de 5 carteros")
    case 6...10: do {
        print("Hay más de 5 carteros")
    }
default:
    print("Hay muchos carteros")
}


/*** switch con enums ***/
enum MailboxProperties {
    case capacity(Int)
    case address(String)
}

let mailboxType = MailboxProperties.address("Valladolid")
switch(mailboxType){
    case .capacity(let count): print("La capacidad es \(count)")
    case .address(let address): print("La dirección es \(address)")
        // no es necesario el default con los enums
}

