/** For in* */
let nombres = ["Adriel", "Dwayne", "Dylan"]

// iteración básica
for nombre in nombres{
    print(nombre)
}

// iteración con condición
for nombre in nombres where nombre.count > 6 {
    print(nombre)
}

// con rangos
for index in 1...5 {
    print("index \(index)")
}

// con rangos con condición
for index in 1...20 where index.isMultiple(of: 2) {
    print("index \(index)")
}

// de reversa
for number in (1...5).reversed() {
    print(number)
}

// con parámetros. origen, llegada y saltos
for number in stride(from: 5, to: 15, by: 2) {
    //15 no se incluye
    print(number)
}

for number in stride(from: 15, to: 5, by: -2) {
    //5 no se incluye
    print(number)
}


//con clave valor
let nombresDiccionario = [1:"Swift", 2: "Object C", 3: "Kotlin"]
for (key, value) in nombresDiccionario {
    print("clave: \(key) - valor: \(value)")
}


/** ForEach* */
nombres.forEach { letter in
    print(letter)
}


/**Bucle While* */
var index = 0
while index < nombres.count {
    print(nombres[index])
    index += 1
}

/** Repeat-While: como el do while* */
var count = 0
repeat {
    print("Count \(nombres[count])")
    count += 1
} while count < nombres.count
