import UIKit

//COLECCIONES EN SWIFT: ARRAY, SET y DICTIONARY

//Colecciones en Swift

//Con las colecciones podemos asignar varios valores de un mismo tipo a una variable o constante, a continuación vamos a ver un ejemplo de colección, para este caso vamos a crear un Array en Swift:

var mySkills = ["Swift", "SwiftUI", "Objective-C", "UIKit"]

//La variable mySkills es una colección ya que está almacenando varios valores de String

//Array
//Array, los utilizamos para guardar una colección de valores ordenados.

//Por Ejemplo, podemos crear un Array de tipo Int que almacene los siguientes valores 1,2,3,1,2,3. Otro ejemplo, podemos crear un Array con valores "Swift", "SwiftUI", "Xcode" en este caso el tipo del Array sería String.

//Set
//Set, los usamos para guardar una colección de valores únicos y desordenados. Es decir, un Set no puede contener valores duplicados.

//Por ejemplo, podemos crear un Set que almacene Int de la siguiente manera 1, 2, 3, 4 . Si intentamos añadir otro 2 no se añadiría al Set.

//Dictionary
//Dictionary, los usamos para guardar una colección pero en este caso usamos clave-valor.
//Los Dictionary no tienen orden (al igual que los Set), por ejemplo, para crear un Dictionary podemos crearlo de la siguiente manera ["name": "SwiftBeta", "app": Xcode] y en este caso el tipo de nuestro Dictionary sería String: String.
//En un Dictionary siempre va la clave primero y a continuación, seguido de : añadimos el valor que hace referencia a la clave.



//Colecciones que no tienen orden

//Por ejemplo recorremos un array con un forEach y los mostramos con un print


var arrayOfNames = ["Swift", "SwiftUI", "Objective - C", "Combine"]

print("/Array/")
arrayOfNames.forEach{print($0)}

// RESULTADO 👇:
// Swift
// SwiftUI
// Objective-C
// Combine

//Siempre mostrará el mismo orden

//Ahora haremos lo mismo con un set

print("/Set/")
var setOfNames: Set <String> = [
    "Swift", "SwiftUI", "Objective - C", "Combine"
]
setOfNames.forEach{print($0)}

//No tiene porque devolver el mismo orden siempre

//Ahora vamos a ver el orden en un Dictionary

var dictionaryOfNames = [
    1: "Swift",
    2: "SwiftUI",
    3: "Objective - C",
    4: "Combine"
]
print("/Dictionary/")
dictionaryOfNames.forEach{ print($0.value)}

//Si compilamos varias veces, vemos que el orden varía. Exactamente el mismo caso que con la colección Set.


//Igual que vimos en el capítulo de las constantes y variables, cuando creamos una colección debemos especificar el tipo que pueden almacenar. Si tengo una Array de tipo String, ese Array solo puede almacenar tipos String. El siguiente ejemplo muestra una variable llamada arrayOfStrings que almacena una colección de String:
print("_________________________________")
var arrayOfStrings: [String] = ["SwiftBeta", "SwiftUI", "Swift", "Xcode"]

arrayOfStrings.append("Objective - C")
arrayOfStrings.forEach {print($0)}

//Si ahora intentamos asignar a nuestro Array otro tipo que no sea String, el compilador nos devolverá un error. Es decir, si intentamos añadir un Int a una colección de String, obtenemos el siguiente error

//--> arrayOfStrings.append(1)

// RESULTADO 👇
// Error: cannot convert value of type 'Int' to expected argument type 'String'



// Colecciones Inmutables en Swift))

//Justo en el ejemplo anterior hemos aprendido a modificar una variable de tipo String pero también podemos almacenar colecciones en constantes.

//Si sabemos que las colecciones no van a cambiar a lo largo del ciclo de ejecución de nuestra aplicación, una buena práctica es crearlas inmutables. De esta manera tenemos menos probabilidades de introducir bugs (errores) en nuestro código. También ayuda al compilador a optimizar la performance de las colecciones que creamos.

//Si intentamos modificar una colección asignada a una constante, el compilador nos retorna un error:

let arrayOfStrings2: [String] = ["SwiftBeta", "SwiftUI", "SwfitUI", "Swift", "Xcode"]
arrayOfStrings2.appent("Obejetive - C")
arrayOfStrings2.forEach {print($0)}

// error: cannot use mutating member on immutable value: 'arrayOfStrings' is a 'let' constant

