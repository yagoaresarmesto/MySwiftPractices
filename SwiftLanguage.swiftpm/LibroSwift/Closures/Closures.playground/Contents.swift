import UIKit

//Los clousures en swift son bloques de funcionalidad que realizan una tarea, son parecidos a las funciones. Es con una función sin nombre donde tenemos un scope y dentro de ese scope ejecutamos nuestro código

//Sintaxis

let myClousure = { (parameter: Int) -> Int in
    print("Value \(parameter)")
    return parameter
}

//Los closures tienen un estilo particular, son limpios y claros, con optimizaciones que fomentan una sintaxis breve y ordenada.

//Una vez lo hemos asignado, vamos a llamar a nuestro closure y le vamos a pasar como parámetro de entrada un Int:

myClousure(2)

//Al inicio del capítulo te comentaba que un closure es muy parecido a usar una función, es decir, podríamos sustituir el closure anterior por la siguiente función:

func myClousure(parameter: Int) -> Int {
    print("Value \(parameter)")
    return parameter
}

//Optimización en Closures

//Ahora vamos a ver otro ejemplo de un closure. En este caso vamos a crear un closure que no acepta ningún parámetro de entrada ni retorna ningún valor:

let myEmptyClosure = { () -> Void in
    print("Hola Yago")
}

//Void es un tipo especial en Swift, dentro de este contexto significa que no se retorna ningún valor. Y en este caso al no retornar ningún valor podemos eliminar la keyword Void y simplificar nuestro código, es decir:

let myEmptyClousure = { () in
    print("Hola Yago")
}

//Tampoco tenemos parámetros de entrada, podríamos hacer otra optimización:

let myEmptyClousure3 = {
    print("Hola Yago")
}

//Ahora si queremos llamar a nuestro closure, no basta con añadir en el Playground myEmptyClosure

myEmptyClousure3()

//Ejemplo práctico sorted(by:)

//Vamos a ver otro ejemplo de cómo optimizar nuestro closure, en este caso vamos a usar el método sorted(by:) que podemos usar para ordenar un Array.

//El método sorted(by:) acepta una closure que espera dos parámetros del mismo tipo y retorna un Bool. El booleano será true si el primer valor debe aparecer antes que el segundo valor, y será false en caso contrario.))

//Veamos un ejemplo

var frameworks = ["SwiftUI", "Combine", "UIKit", "Foundation"]

frameworks.sorted { (firstValue, secondValue)-> Bool in
    return firstValue < secondValue //--> Podríamos quitar el return ya que sólo es 1 línea
}

//Al usar sorted(by:) hemos rellenado el closure con la lógica que queremos usar para ordenar nuestro Array. En este caso lo hemos ordenado alfabéticamente (es decir, se ordena el Array de la A a la Z).

//Para simplificar los parámetros de entrada que entran a nuestro closure podemos usar $0, $1, $2, etc. En este caso $0 representa el parámetro que antes llamábamos firstValue, y $1 representar el parámetro que antes llamábamos secondValue.

frameworks.sorted { $0 < $1 }

//¡Incluso podemos simplificarlo aún más! Podemos pasarle el comparador < directamente a la función:

frameworks.sorted(by: <)


//Sustituir Closures por funciones

//En ocasiones la lógica que se añade a un closure puede extraerse en un método. De esta manera evitamos crear la misma lógica dentro del closure y duplicar código en varias partes de nuestra aplicación.

//Para reusar código podemos pasar una función al closure que tenga la misma firma. Es decir, siguiendo con el ejemplo anterior, podemos crear una función que nos ordene 2 String y retorne un Bool.

func sort (_ stringOne: String, _ stringTwo: String) -> Bool {
    stringOne < stringTwo
}

//La función sort tiene la misma lógica que usábamos dentro del closure de sorted(by:):

var frameworks2 = ["SwiftUI", "Combine", "UIKit", "Foundation"]

frameworks2.sorted { (firstValue, secondValue) -> Bool in
    return firstValue < secondValue
}

//En este caso podemos sustituir la lógica que tenemos en el closure y pasar como parámetros la función, es decir podríamos hacer el siguiente cambio:

var frameworksSorted = frameworks2.sorted(by: sort)

// RESULTADO 👇
// ["Combine", "Foundation", "SwiftUI", "UIKit"]



//Trailing Clousures

//Al crear una función podemos pasar parámetros de entrada para que se usen dentro de su scope. Estos parámetros también pueden ser closures, y si enviamos un closure como último parámetro de una función a este se le llama trailing closures.

//El uso de trailing closures hace que tu código sea más fácil de leer.

func createUser(name: String, clousure: (String, String) -> Void) {
    print("Create User: \(name)")
    clousure(name, "Suscríbete")
    print("Completed")
}

//En este caso, hemos creado 2 parámetros de entrada. El primero es un String y el segundo es un closure (o función) que acepta dos tipos String. Cuando llamemos al closure podemos implementar la lógica que queramos dentro del closure, en mi caso he añadido un print:

createUser(name: "Yago") { username, action in
    print("Track Event \(username) with \(action)")
}

//Ahora imagina que tenemos la siguiente función con un único parámetro de entrada y este parámetro de entrada es un closure:

func removeAllUsers(clousure: (String, String) -> Void){
    print("Remove all users")
    clousure("Users", "Database")
    print("Completed")
}

//Ahora podemos llamar a nuestra función de la siguiente manera:

removeAllUsers {name, location in
    print("User name \(name) Action: \(location)")
}

//Multiples closures en una función

//Al crear una función podemos pasar closures como parámetros de entrada. Esto es muy útil para crear varios caminos dentro de tu código, ahora vamos a ver un ejemplo muy sencillo.

//Vamos a simular que realizamos una petición HTTP y según el resultado obtenido ejecutamos un closure u otro. Es decir, en el siguiente código, si todo va bien ejecutamos onSuccess y si hay un error ejecutamos onFailure.

func getDataFromBackend(status: String,
                        onSuccess: () -> Void,
                        onFailure:(String) -> Void) {
    if status == "OK" {
        onSuccess()
    } else {
        onFailure(status)
    }
}

//Una vez hemos creado la función ahora vamos a llamarla pasándole como parámetro de entrada la String "OK":

getDataFromBackend(status: "OK") {
    print("Success")
} onFailure: { status in
    print("Error: \(status)")
}

// RESULTADO 👇
// Success

//Al compilar nuestro Playground obtenemos un mensaje por consola de Success. Si modificamos el parámetro de entrada por "KO" obtenemos el mensaje de error, es decir, estamos ejecutando el closure onFailure.

//Funciones pueden retornar Funciones


//Al principio del capítulo hemos visto que en una función podemos pasar como parámetro de entrada un closure o función, pero también podemos retornar funciones como tipo de retorno de una función. Quizás este concepto puede parecerte un poco extraño, pero es muy potente. A continuación vamos a ver un ejemplo para verlo en detalle:

func makeCounter(withValue value: Int) -> () -> Int {
    var counter = value
    
    func increment() -> Int {
        counter += 1
        return counter
    }
    
    return increment
}

//La función makeCounter crea otra función increment en su implementación. Si analizamos el tipo de nuestra función makeCounter vemos que es:

// (Int) -> () -> Int

//Lo que significa es que nuestra función makeCounter acepta un valor de tipo Int y retorna otra función de tipo () -> Int. Hasta ahora estábamos acostumbrados a poder retornar un tipo y no una función. Fíjate que la función increment que hemos creado dentro de makeCounter tiene el tipo () -> Int, es por eso que la podemos retornar desde la implementación de makeCounter.

//Es decir, lo que estamos retornando en makeCounter es una función que tiene una firma de () -> Int, justo igual que la función increment()

//Podríamos hacer algo un poco más avanzado y cambiar la sintaxis que hemos usado en el anterior método, en lugar de crear la función increment() podríamos usar un closure:

func makeCounter2(withValue value: Int) -> () -> Int {
    var counter = value
    return {
        counter += 1
        return counter
    }
}

//Lo que hemos hecho ha sido sustituir la función por un closure, pero el resultado es exactamente el mismo.

//Ahora vamos a ejecutar el código de nuestra función makeCounter, vamos a llamarla pasándole un parámetro de entrada y vamos a ver qué nos retorna el Playground:

makeCounter(withValue: 10)
// RESULTADO 👇
// () -> Int

//Si te fijas este resultado no es el que esperamos. Al usar el anterior código lo que está retornando es la función de retorno. Para ejecutar la función debemos usar (), de esta manera indicamos que queremos ejecutar la función que nos retorna makeCounter, es decir:

makeCounter(withValue: 10)()

//Closures son reference type

//Las funciones y los closures son reference type, esto significa que cuando asignas una función o un closure a una constante o variable en realidad estás asignando una referencia. Vamos a verlo más claro con un ejemplo práctico y vamos usar la misma función que vimos en la anterior sección:

func makeCounter3(withValue value: Int) -> () -> Int {
    var counter = value
    func increment() -> Int {
        counter += 1
        return counter
    }
    return increment
}

//Ahora voy a llamar a la función makeCounter y voy a asignar su valor de retorno a 2 variables. Este valor de retorno es una función de tipo () -> Int.

var counterA = makeCounter(withValue: 10)
var counterB = counterA
var counterC = counterB

//Ahora voy a llamar a la función makeCounter y voy a asignar su valor de retorno a 2 variables. Este valor de retorno es una función de tipo () -> Int.

print(counterA())

//Si ahora llamamos a la función counterB ¿qué crees que vamos a obtener como resultado? ¿otra vez 11? el resultado que obtenemos es 12.

print(counterB())
print(counterC())


//AutoClosures en Swift (@autoclosure)

//Antes de finalizar el capítulo sobre closures vamos a ver los autoclosures.
//Los autoclosures son un tipo de closure que nos permite eliminar las llaves cuando pasamos un closure como parámetro a una función.

//Vamos a ver un ejemplo muy sencillo, imagina que tienes el siguiente Array:

var arrayOfNumbers = ["1", "2", "3", "4", "5"]
print(arrayOfNumbers)

//Hasta aquí nada nuevo, estamos llamando a la propiedad count de un Array para que printe el número de elementos que hay dentro del Array.

//Pero, podría hacer lo siguiente, podría crear un closure con la lógica de eliminar la primera posición de mi Array:

let removeFirstElement = { arrayOfNumbers.remove(at: 0) }
    
print(arrayOfNumbers.count)

// RESULTADO 👇
// 5

// En este caso estamos encapsulando un comportamiento de borrar el primer elemento del Array, lo estamos encapsulando dentro de un closure que asignamos a la constante removeFirstElement. Este closure no lo estamos ejecutando, lo tenemos referenciado en una constante para ejecutarlo más tarde. Es por eso que el print del número de elementos de arrayOfNumbers sigue siendo 5, ya que la lógica del closure no se ha ejecutado aún. Podríamos ejecutar nuestro closure y volver a comprobar el número de elementos de nuestro Array:

print("Number \(removeFirstElement())!")
print(arrayOfNumbers.count)

//Ahora al ejecutarse el closure hemos eliminado la primera posición, por lo tanto al llamar a count el resultado es 4.

//Este es el concepto que te quería explicar antes de entrar en detalle sobre los autoclosures.


//Ahora vamos a crear una función que acepte un closure como parámetro de entrada. El closure va a contener la lógica de eliminar el primer número de un Array:

func remove(arrayOfNumbers: [String],
            removeFirstNumber: () -> String){
    if arrayOfNumbers.count == 6 {
        print("Numbers OK!")
    } else {
        print("Number Removed \(removeFirstNumber())!")
    }
}
 //Para llamar al función podríamos hacer lo siguiente:

remove(arrayOfNumbers: arrayOfNumbers, removeFirstNumber: {arrayOfNumbers.remove(at: 0)})

//Pero en lugar de enviarle como parámetro un closure explícito, podríamos utilizar @autoclosure para evitar añadir las llaves y así enviarle solo la expresión, es decir, vamos a cambiar la firma de la función y vamos a añadir el @autoclosure:

func remove2(arrayOfNumbers: [String],
             removeFirstNumber: @autoclosure () -> String) {
    if arrayOfNumbers.count == 6 {
        print("Numbers OK!")
    } else {
        print("Number Removed \(removeFirstNumber())!")
    }
}

remove2(arrayOfNumbers: arrayOfNumbers, removeFirstNumber: arrayOfNumbers.remove(at: 0))
