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
//arrayOfStrings2.appent("Obejetive - C")
//arrayOfStrings2.forEach {print($0)} ---> salta error

// error: cannot use mutating member on immutable value: 'arrayOfStrings' is a 'let' constant


//Array

//Para inicializar un Array sin ningún elemento, podemos hacerlo de varias maneras:

var numbers = [Int]()
var numbers2: [Int] = [] //Esta es la más común
var numbers3: [Int] = .init()
var numbers4: Array<Int> = []

//Pero aparte de inicializarlo podemos asignarle un valor directamente. Vamos a ver varias maneras:

var strings = Array(["Swift", "Xcode", "SwiftUI"])
var string2 = ["Swift", "Xcode", "SwiftUI"]

//En Swift tenemos propiedades y métodos que podemos usar con los Array. Por ejemplo, para saber cuántos elementos tiene un Array podemos usar la propiedad count, pero hay muchas propiedades y métodos que podemos usar. Vamos a ver algunos ejemplos:

//Count

//Tenemos el siguiente array

var myNewSkills = ["Combine", "TDD", "SnpapshotTests", "Swift Package Manager"]

print(mySkills.count) //Número de elementos de un array en este caso 4

//isEmpty

print(myNewSkills.isEmpty)// Devuelve true o false, en este caso false

//Este tipo de condición es muy útil usarla en un if, de esta manera podemos tomar decisiones dentro de nuestro código y ejecutar una lógica u otra:

if myNewSkills.isEmpty {
    print("El array está vacío")
}else {
    print("El array no está vacío")
}

//FIRST, LAST

//Podemos obtener el primer y último valor de un Array usando la propiedad first y last respectivamente:
print(myNewSkills.first)
print(myNewSkills.last) //Devuelven opcionales

//En este caso estamos accediendo a estas propiedades first y last que tienen una posiciones ya definidas: el primer y último elemento. Pero podríamos acceder directamente a otras posiciones de nuestro Array, podemos usar los subscripts en Swift.

//Subscripts

//Los subscripts son otra forma de acceder a los elementos de una colección, son atajos para actualizar o obtener su valor. Lo único que tenemos que hacer es poner el nombre de nuestro Array seguido de [] y dentro de los corchetes añadir la posición que queremos extraer de nuestro Array. Vamos a ver un ejemplo:

print(myNewSkills[2])
print(myNewSkills[3])

//Append

//Ahora vamos a utilizar dos maneras diferentes para añadir valores dentro de nuestro Array myNewSkills

myNewSkills.append("Tests")
myNewSkills += ["UITableView", "UICollectionView"]

print(myNewSkills)

//INSERT

//Otra manera de añadir valores dentro de nuestro Array es usando el método insert. Este método acepta 2 parámetros, el primer parámetro es el valor que queremos insertar en nuestro Array, y el segundo parámetro es la posición donde queremos añadirlo:

myNewSkills.insert("SwiftBeta", at: 2)
print(myNewSkills)

//CONTAINS
// Usamos el método contains para saber si un elemento está dentro de nuestro Array:

let containsCombine = myNewSkills.contains(where: { $0 == "Combine"} )
print(containsCombine)

// RESULTADO 👇
// true

//REMOVEALL
//Usamos removeAll cuando queremos borrar todos los elementos de nuestro Array. Es decir, si queremos borrar todos los elementos de nuestra colección myNewSkills haríamos lo siguiente:

myNewSkills.removeAll()
print(myNewSkills)

//Set

//Inicializar un set:

var setNumbers = Set<Int>()
var setNumbers2: Set<Int> = [] //Me quedo con esta
var setNumbers3: Set<Int> = .init()

//Acabamos de ver cómo crear un Set completamente vacío. Pero aparte de inicializarlo podemos asignarle un valor directamente. Vamos a ver varias maneras:

var myDevices = Set(["Monitor", "Keyboard", "Laptop", "Mobile"])
var myDevices2: Set<String> = ["Monitor", "Keyboard", "Laptop", "Mobile"]
var myDevices3 = Set.init(["Monitor", "Keyboard", "Laptop", "Mobile"])

//Si intentaremos inicializar un Set con valores repetidos, todos los valores duplicados se descartarían automáticamente:

var myDevices4 = Set(["Monitor", "Monitor", "Keyboard", "Laptop", "Mobile"])
print(myDevices4)

// RESULTADO 👇
// ["Monitor", "Keyboard", "Laptop", "Mobile"]

//Acceder y Modificar un Set
//COUNT

var mySetNumbers : Set<Int> = [1, 2, 3, 4, 5]
print(setNumbers.count)

//ISEMPTY

//Otra propiedad que podemos usar para saber si un Set esta vacío es la propiedad isEmpty, vamos a ver un ejemplo:

if mySetNumbers.isEmpty {
    print("Esta vacío")
} else {
    print("No está vacío")
}

// RESULTADO 👇
// mySetNumbers isn't Empty

//
print(mySetNumbers.count)

// RESULTADO 👇

// FIRST
print(mySetNumbers.first)

//Como hemos dicho, los Set no tienen orden, aunque estemos pidiendo la posición first el valor que nos va a retornar siempre va a ser diferente.

//INSERT

mySetNumbers.insert(6)
mySetNumbers.insert(8)
print(mySetNumbers)

//CONTAINS

var containsNumberSix = mySetNumbers.contains(where: { $0 == 6 } )
print(containsNumberSix)

// RESULTADO 👇
// true

//REMOVEALL
mySetNumbers.removeAll()
print(mySetNumbers)

// RESULTADO 👇
// []


//Realmente todas estas propiedades tanto en los arrays como en los y Set son muy similares. Pero tienen alguna diferencia

//- En Set no existe el método append
//- En Set podemos usar el método insert pero sin especificar una posición (en el tipo Array podemos indicar la posición).
//- En Set no existe la propiedad last

//Dictionary

//Los Dictionary almacenan asociaciones entre claves del mismo tipo y valores del mismo tipo. Cada valor está asociado a una única clave. En este caso, al igual que los Set tampoco tenemos un orden.

var myDictionary = [String: String]()
var myDictionary2: [String: String] = .init()
var myDictionary3: [String: String] = [:]


//Podríamos crear un Dictionary especificando que su clave es de tipo Int y su valor de tipo Bool:

var anotherDictionary = [Int: Bool]()

//Inicializar un Dictionary con un valor:

var myDictionaryInfo = [
    "name": "SwiftBeta",
    "webpage": "swiftbeta.com",
    "skills": "Swift"
]
var myDictionaryInfo2 = Dictionary(dictionaryLiteral: ("name", "SwiftBeta"), ("webpage", "swiftbeta.com"), ("skills", "Swift"))

//Acceder y Modificar un Dictionary

//COUNT
print(myDictionaryInfo.count)

//ISEMPTY
if myDictionaryInfo.isEmpty {
    print("myDictionaryInfo isEmpty")
} else {
    print("myDictionaryInfo isn't Empty")
}

//UPDATEVALUE

myDictionaryInfo.updateValue("@SwiftBeta:", forKey: "twitter")

print(myDictionaryInfo)

//Este método lo podemos usar también para modificar el valor de una clave que ya existe en nuestro Dictionary, vamos a modificar el actual valor de la clave webpage que es swiftbeta.com por el valor google.com:

myDictionaryInfo.updateValue("google.com", forKey: "webpage")
print(myDictionaryInfo)

//Otra manera de añadir un valor a un Dictionary, es usando los subscripts (tal y como hemos visto en la sección de los Array). A continuación vamos a añadir una nueva clave con su respectivo valor:

myDictionaryInfo["city"] = "Lugo"
print(myDictionaryInfo)

//REMOVEVALUE

myDictionaryInfo.removeValue(forKey: "twitter")
print(myDictionaryInfo)

//También podríamos haber usado los subscripts para asignar nil a una clave y por lo tanto eliminarla del Dictionary.

myDictionaryInfo["twitter"] = nil
