/** PROPIEDADES COMPUTADAS * */

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

// Observadores
struct CoffeShopObservers {
    var price: Float = 0.5
    var coffees: Int {
        //cuando se va a modificar la variable
        willSet(newTotalCoffees) {
            print("Viene más café \(newTotalCoffees)")
        }
        //después de modificar la variable
        didSet {
            print("Tenemos más café \(coffees)")
            totalCoffeesPrice = Float(coffees) * price
        }
    }
    
    var totalCoffeesPrice: Float = 0
}

var coffee = CoffeShopObservers(coffees: 10)
coffee.coffees = 15
coffee.totalCoffeesPrice
