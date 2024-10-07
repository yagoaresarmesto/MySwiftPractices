import UIKit

//Crea una variable que almacene "Estoy aprendiendo Swift"

var learn = "Estoy aprendiendo Swift"

//Crea un Array que almacene 2 valores "Suscríbete", "Youtube"

var array = ["Suscríbete", "Youtube"]

//Añade al Array el siguiente valor Aprende Swift

array.append("Aprende Swift")

print(array)

//Inserta el valor SwiftUI en la posición 1

array.insert("SwiftUI", at: 1)

print(array)

//Utiliza una propiedad para saber el número de elementos del Array

print(array.count)

//Utiliza la propiedad first y last, ¿Qué valores obtienes?

print("Primera posición: \(array.first) Última posición: \(array.last)")

//Crea un Set que almacene 50, 100, 150, 200

var set = Set([50, 100, 150, 200])

//Intenta insertar el valor 200, ¿Qué ocurre?

set.insert(200) //---> No se va a añadir porque ya esta incluído en mi Set

print(set)

//Utiliza una propiedad para saber el número exacto de elementos en tu Array

print(set.count)

//Crea un Dictionary con las claves: "name", "city" y "age" y asigna el valor que quieras a cada una de ellas.

var diccionario = [
    "name": "Yago Ares",
    "city": "Lugo",
    "age": "23"
]

//Ahora, printa solo el valor de la key "name"

print(diccionario["name"]!)

//Modifica el valor de la key "name" (añade el texto que quieras)

diccionario.updateValue("Jesús", forKey: "name")
print(diccionario)

//¿Qué ocurre si asignas un valor a una key que no existe en tu Dictionary?

diccionario.updateValue("Jesús", forKey: "valorNuevo")
print(diccionario) //Al parecer añade una nueva key al diccionario

//Elimina todas las claves-valores de tu Dictionary

diccionario.removeAll()

//Usa uno de lo inicializadores de Array para crear un Array que contenga 5 veces la palabra "SwiftBeta" (Puedes hacerlo con solo un init, busca en la documentación de Apple )

let arrayRepeat = Array(repeating: "SwiftBeta", count: 5)

//Dado el siguiente Array ["Swift", "SwiftUI", "Objective-C"] obtén solo el valor de SwiftUI y guárdalo en una variable.

var array2 = ["Swift", "SwiftUI", "Objective-C"]

var elementoDelArray = array2[1]

print(elementoDelArray)

//Otra forma:

let isSwiftUI = array2.contains("SwiftUI")
print("Array contains SwiftUI: \(isSwiftUI)")



//Avanzado, crea un tipo propio llamado User y que solo tenga una propiedad name de tipo String. Nuestro nuevo tipo User conforma el protocolo Hashable.

struct User: Hashable {
    let name: String
    var set2 = Set(["Piscina", "Queso", "Patines", "Queso", "Pastillas", "Piscina"])
}


