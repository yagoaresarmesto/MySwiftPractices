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
