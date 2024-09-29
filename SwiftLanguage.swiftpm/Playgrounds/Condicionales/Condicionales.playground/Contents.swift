import UIKit

//Condcionales (if), simple

//Swift maneja estos problemas con if instrucciones que nos permiten verificar una condición y ejecutar código si la condición es verdadera. Tienen el siguiente aspecto:

/** if someCondition {
 print("Do something")
 }*/

//Por supuesto, lo que realmente importa es la someConditionparte, porque ahí es donde entra en juego tu código de verificación: ¿qué condición quieres verificar realmente?

//Bien, probemos el ejemplo de la puntuación: si una scoreconstante es mayor que 80, imprimamos un mensaje. Así es como se vería en el código:

let score = 85

if score > 80 {
    print("Great job")
}

//Probémoslo: ¿qué crees que imprimirá este código?

let speed = 88
let percentage = 85
let age = 18

if speed >= 88 {
    print("Where we're going we don't need roads.")
}

if percentage < 85 {
    print("Sorry, you failed the test.")
}

if age >= 18 {
    print("You're eligible to vote")
}

//Bueno, nuestro primero se ejecutará si speedes mayor o igual a 88, y como es exactamente 88 print()se ejecutará el primer código.

//El segundo se ejecutará si percentagees menor que 85, y como es exactamente 85, el segundo noprint() se ejecutará: usamos menor que, no menor que o igual.

//El tercero se ejecutará si agees mayor o igual a 18, y como es exactamente 18, el tercero print() se ejecutará.


//Ahora, probemos nuestra segunda condición de ejemplo: si el usuario ingresó un nombre que aparece después del nombre de su amigo en orden alfabético, coloque el nombre del amigo primero. Ha visto cómo <, >=y otras funciones funcionan muy bien con números, pero también funcionan igual de bien con cadenas de forma inmediata:

let ourName = "Dave Lister"
let friendName = "Arnold Rimmer"

if ourName < friendName {
    print("It's \(ourName) vs \(friendName)")
}

if ourName > friendName {
    print("It's \(friendName) vs \(ourName)")
}

//Veamos nuestra tercera condición de ejemplo: si al agregar un número a una matriz, esta contiene más de 3 elementos, elimine el más antiguo. Ya cumplió con append(), count, y remove(at:), por lo que ahora podemos juntar los tres con una condición como esta:

var numbers = [1, 2 ,3]

numbers.append(4)

if numbers.count > 3 {
    numbers.remove(at: 0)
}

print(numbers)

//Ahora veamos nuestra cuarta condición de ejemplo: si se le pidió al usuario que ingresara su nombre y no escribió nada, asígnele un nombre predeterminado de "Anónimo".

//Para resolver esto, primero deberás conocer otros dos operadores de comparación que usarás mucho y que manejan la igualdad. El primero es ==y significa "es igual a", que se usa de la siguiente manera:

let country = "Canada"

if country == "Australia" {
    print("G'day!")
}

//El segundo es !=, que significa “no es igual a”, y se usa así:

let name = "Taylor Swift"

if name != "Anonymous" {
    print("Welcome, \(name)")
}

//En nuestro caso, queremos comprobar si el nombre de usuario introducido por el usuario está vacío, lo que podríamos hacer de la siguiente manera:

// Create the username variable
var username = "taylorswift13"

// If `username` contains an empty string
if username == "" {
    // Make it equal to "Anonymous"
    username = "Anonymous"
}

// Now print a welcome message
print("Welcome, \(username)!")

//Se ""trata de una cadena vacía: iniciamos la cadena y la terminamos, sin nada en el medio. Al comparar usernameesto, verificamos si el usuario también ingresó una cadena vacía para su nombre de usuario, que es exactamente lo que queremos.

//Ahora bien, existen otras formas de realizar esta comprobación y es importante que comprendas lo que hacen.

//Primero, podríamos comparar la countcantidad de letras de la cadena con 0, de esta manera:

if username.count == 0 {
    username = "Anonymous"
}

//otra forma podría ser y es más limpia es:

if username.isEmpty == true {
    username = "Anonymous"
}

//Inlcuso se puede simplificar

if username.isEmpty {
    username = "Anonymous"
}
