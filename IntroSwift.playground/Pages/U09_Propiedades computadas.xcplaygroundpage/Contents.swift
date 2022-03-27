/** PROPIEDADES COMPUTADAS **/

struct CoffeeShop {
    var clientes: [String]
    var coffees: Int
    var coffeesPerClient: Float {
        get {
            return Float(coffees / clientes.count)
        }
        set {
            coffees = Int(newValue) * clientes.count
        }
    }
}

var coffeShop = CoffeeShop(
    clientes: ["Adriel", "Dwayne", "Dylan", "Yoma"], coffees: 0
)

coffeShop.coffeesPerClient
coffeShop.coffeesPerClient = 10
coffeShop.coffees

