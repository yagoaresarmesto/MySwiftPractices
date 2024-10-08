import UIKit

//If en Swift
//Un ejemplo rápido

var isUserLogged = false

if isUserLogged {
    print("Muestra el contenido de la app")
} else {
    print("Muestra el login")
}

//En este caso, isUserLogged es false, por lo tanto la condición del if no se cumple y entraría dentro del else printando por consola el mensaje de "Muestra el login".

var numberOfSucribers = 6

if numberOfSucribers > 10{
    print("Tengo un montón de subs")
} else if numberOfSucribers > 5{
    print("Necesito más subs")
} else {
    print("Sigue trabajando")
}

//Guard en swift

//Los guards son muy comunes en Swift, los usamos como early return, es decir, nos ayudan a salir de la ejecución de un scope cuando no se cumple una condición y son muy parecidos a un if, vamos a ver un ejemplo:

var myArray2: [String] = []

@MainActor
func checkMyArray() {
    guard !myArray2.isEmpty else {
        print("Array is empty!")
        return
    }
    
    print("Array is NOT empty!")
}

//Si estás acostumbrado a los if al principio puede parecer un poco complejo entender los guard pero una vez los añades a tu código son muy útiles, limpios y concisos.

//Guard y Opcionales

//En el capítulo sobre opcionales veíamos varías maneras de extraer el valor de un opcional de forma segura y para ello utilizábamos varios métodos (métodos seguros y force unwrap). Pero también podemos usar los guard para extraer el valor de un opcional:


var myOptional: Int? = 2

@MainActor func checkMyOptional() {
    guard let value = myOptional else {
        print("myOptional is nil!")
        return
    }
    
    print("myOptional value is \(value)!")
}

checkMyOptional()

//Switch en Swift

var numbersOfSuscribers = 100

switch numbersOfSuscribers {
case 100:
    print("Un montón de subs")
default:
    print("Keep working!")
}

// RESULTADO 👇:
// Un montón de subs! 🤓

//Fíjate que hemos añadido default a nuestro switch, en este caso es obligatorio ya que necesitamos tener un camino a ejecutar si ningún case del switch se cumple, pero ¿qué ocurre si eliminamos el default? pues que obtenemos el siguiente error:

// RESULTADO 👇
// Error: Switch must be exhaustive


//El ejemplo que acabamos de ver lo podríamos haber creado usando if. Pero vamos a seguir explorando qué más podemos hacer con los switch. Podemos añadir la keyword where y crear una condición, por ejemplo, podríamos crear el siguiente código:

switch numbersOfSuscribers {
    
case let x where numberOfSucribers > 5:
    print("A bunch of subscribers! TOTAL: \(x)")
default:
    print("Keep working")
}

//Los switch son muy útiles cuando usamos Enum (en el capítulo 11 hablamos en detalle sobre los Enum pero aquí vamos a ver un pequeño ejemplo) imagina que tenemos un Enum que representa los distintos estados de un mensaje de Whatsapp:

enum MessageStatus {
    case sent
    case delivered
    case read
}

let status: MessageStatus = .read

switch status {
case .sent:
    print("Message sent, add grey stick")
case .delivered:
    print("Message delivered, add new stick")
case .read:
    print("Message read, update double stick to blue")
}

// RESULTADO 👇:
// Message read, update double stick to blue

//For en Swift

//Hay varias formas de crear bucles en Swift, y vamos a ver la primera usando for.
//Vamos a ver un ejemplo donde recorremos 1 por 1 los elementos de un Array y por cada elemento del Array vamos a printar su valor:

let myCollection = [1, 2, 3, 4, 5]

for number in myCollection {
    print(number)
}

//Vamos a ver un ejemplo donde tenemos un Array de lenguajes de programación y solo queremos entrar en el scope del for los que tenga un nombre inferior a 7 caracteres:

let languages = ["Swift", "Objective-C", "Javascript", "Kotlin"]

for language in languages where language.count < 7 {
    print(language)
}

// RESULTADO 👇:
// Swift
// Kotlin

//Ahora que hemos visto cómo recorrer un Array, ¿podríamos recorrer un Dictionary? Pues sí, podríamos hacer lo siguiente:

let myDictionary = [
    "name": "SwiftBeta",
    "city": "Barcelona"
]

for (key, value) in myDictionary {
    print("Key: \(key)/ with value: \(value)")
}

//While en swift

//Veamos un ejemplo:

let numbers = [1 , 2, 3, 4, 5]

var counter = 0

while (counter < numbers.count){
    print(numbers[counter])
    counter += 1
}

//La condición que se debe cumplir para ejecutar el scope del while es counter < numbers.count, es decir, por cada iteración del while vamos a incrementar en 1 el valor de la variable counter, y cuando counter sea 5 ya no entrará dentro del scope del while, ¿por qué? porque 5 < 5 es false y por lo tanto la condición deja de cumplirse y ya no seguimos ejecutando el código del while.

//Esta es una manera de recorrer una colección usando while ahora vamos a ver otra exactamente igual pero usando repeat-while:


var counter2 = 0

repeat {
    print(numbers[counter2])
    counter += 1
    
} while (counter < numbers.count)

//Es exactamente igual, lo único que la sintaxis ha cambiado. Lo que teníamos antes del scope del while ahora lo tenemos dentro del scope del repeat y la misma condición la tenemos en el while.
