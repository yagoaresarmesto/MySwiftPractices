import UIKit

/**Crea un diccionario llamado carModels que tenga como clave el nombre del fabricante (por ejemplo, "Tesla", "BMW") y como valor el nombre de un modelo (por ejemplo, "Model S", "i8").
 Añade tres fabricantes y sus respectivos modelos.
 Imprime el modelo de "Tesla".
 Modifica el modelo del fabricante "BMW" a otro modelo.
 Elimina uno de los fabricantes del diccionario.
 Verifica si el diccionario contiene un fabricante llamado "Ferrari". Si no, imprime un mensaje indicando que no está.*/

var carModels = [String: String]()

carModels["Tesla"] = "Model S"
carModels["BMV"] = "i8"
carModels["Audi"] = "r8"

print(carModels["Tesla", default: "Desconocido"])

carModels["BMV"] = "M3"
carModels.removeValue(forKey: "Audi")

if carModels["Ferrari"] == nil {
    print("Ferrari no está en el diccionario.")
}
// O tmb
//    if carModels.keys.contains("Ferrari") {
//    print("Ferrari está en el diccionario.")
//    } else {
//    print("Ferrari no está en el diccionario.")
//    }

print(carModels)

/**Ejercicio 2: Sets
 Crea un set llamado favoriteColors que contenga tres colores que te gusten.
 Añade un color más al set.
 Intenta añadir un color que ya esté en el set y observa lo que sucede.
 Imprime el número total de colores en el set.
 Verifica si el set contiene el color "Rojo".
 Elimina un color del set y vuelve a imprimir los colores restantes.*/


var favoriteColors = Set(["Verde", "Azul", "Amarillo"])

favoriteColors.insert("Rojo")

favoriteColors.insert("Azul")

print(favoriteColors)

if favoriteColors.contains("Rojo"){
    favoriteColors.remove("Azul")
    print(favoriteColors)
}

/**Ejercicio 3: Enumeraciones
Define una enumeración llamada TransportMode que incluya los casos: .car, .bicycle, .bus, y .walking.
Crea una variable currentMode de tipo TransportMode y asígnale el valor .car.
Cambia el valor de currentMode a .bicycle.
Imprime el valor actual de currentMode.
Añade un nuevo caso a la enumeración llamado .train y asígnalo a currentMode. */


enum trasportMode {
    case car
    case bicycle
    case bus
    case walking
    case train //Añadimos train
}

var currentMode = trasportMode.car
currentMode = .bicycle

print(currentMode)

currentMode = .train

print(currentMode)



/**Ejercicio Opcional 4: Diccionarios, Sets y Enums combinados
 Crea una enumeración llamada MealType que incluya los casos: .breakfast, .lunch, .dinner.
 Crea un diccionario llamado menu donde las claves sean de tipo MealType y los valores sean sets de platos. Ejemplo: para .breakfast, un set de platos como "Pancakes", "Eggs".
 Añade algunos platos para cada comida (desayuno, almuerzo, cena).
 Imprime los platos disponibles para el almuerzo.
 Añade un nuevo plato para la cena y vuelve a imprimir el menú de la cena.
*/

enum mealType {
    case breakfast
    case lunch
    case dinner
}


var menu = [mealType: Set <String>]()
menu[.breakfast] = ["Pancakes", "Eggs", "Toast"]
menu[.lunch] = ["Burger", "Salad" , "Soup"]
menu[.dinner] = ["Steak", "Pasta", "Fish"]
    
if let lunchMenu = menu[.lunch] {
    print("Platos del almuerzo: \(lunchMenu)")
}

menu[.dinner]?.insert("Pizza")

if let dinnerMenu = menu[.dinner] {
    print("Platos para la cena: \(dinnerMenu)")
}
