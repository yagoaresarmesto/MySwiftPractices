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

//Multiples condiciones

//Cuando usamos ifSwift, debemos proporcionarle algún tipo de condición que será verdadera o falsa una vez que se haya evaluado. Si desea verificar varios valores diferentes, puede colocarlos uno después del otro de esta manera:

let age1 = 16

if age1 >= 18 {
    print("You can vote in the next election.")
}

if age1 < 18 {
    print("Sorry, you're too young to vote.")
}

//Sin embargo, si lo piensas bien, eso no es muy eficiente: nuestras dos condiciones son mutuamente excluyentes, porque si alguien es mayor o igual a 18 (la primera condición), entonces no puede ser menor que 18 (la segunda condición), y lo opuesto también es cierto. Estamos haciendo que Swift haga un trabajo que simplemente no es necesario.

//En esta situación, Swift nos proporciona una condición más avanzada que nos permite agregar un elsebloque a nuestro código: un código para ejecutar si la condición no es verdadera.

//Usando esto elsepodríamos reescribir nuestro código anterior a esto:

if age1 >= 18 {
    print("You can vote in the next election.")
} else {
    print("Sorry, you're too young to vote.")
}

//Existe una condición aún máselse if avanzada llamada , que le permite ejecutar una nueva verificación si la primera falla. Puede tener solo una de estas si lo desea, o tener múltiples else if, e incluso combinarlas else ifcon una elsesi es necesario. Sin embargo, solo puede tener una else, porque eso significa "si todas las demás condiciones han sido falsas"

let a = false
let b = true

if a {
    print("Code to run if a is true")
} else if b {
    print("Code to run if a is false but b is true")
} else {
    print("Code to run if both a and b are false")
}

//Puedes seguir agregando más y más else ifcondiciones si lo deseas, ¡pero ten cuidado de que tu código no se complique demasiado!

//Además de utilizar elsey else ifpara crear condiciones más avanzadas, también puedes comprobar más de una cosa. Por ejemplo, podríamos decir "si la temperatura de hoy es superior a 20 grados Celsius pero inferior a 30, imprimir un mensaje".

let temp = 25

if temp > 20 {
    if temp < 30 {
        print("It's a nice day.")
    }
}

//Aunque eso funciona bastante bien, Swift proporciona una alternativa más corta: podemos usar &&para combinar dos condiciones juntas, y la condición completa solo será verdadera si las dos partes dentro de la condición son verdaderas.

//Entonces, podríamos cambiar nuestro código a esto:

if temp > 20 && temp < 30 { // && se le como "y"
    print("It's a nice day.")
}

let userAge = 14
let hasParentalConsent = true

if userAge >= 18 || hasParentalConsent == true { //Esto se le como "o"
    print("You can buy the game")
}

//Recuerde que el uso == truede una condición se puede eliminar, ya que, obviamente, ya estamos comprobando un valor booleano. Por lo tanto, podríamos escribir esto en su lugar:

if userAge >= 18 || hasParentalConsent {
    print("You can buy the game")
}

//Para terminar de verificar múltiples condiciones, probemos un ejemplo más complejo que combina if, else if, elsey , ||todo al mismo tiempo, e incluso muestra cómo las enumeraciones encajan en las condiciones.

//En este ejemplo, vamos a crear una enumeración llamada TransportOption, que contiene cinco casos: avión, helicóptero, bicicleta, automóvil y scooter. Luego, asignaremos un valor de ejemplo a una constante y ejecutaremos algunas comprobaciones:

//Si vamos a algún lugar en avión o en helicóptero, imprimiremos “¡Vamos a volar!”
//Si vamos en bicicleta, imprimiremos “Espero que haya un carril bici…”
//Si vamos en coche, imprimiremos “Es hora de quedarse atrapado en el tráfico”.
//De lo contrario, imprimiremos "¡Voy a alquilar un scooter ahora!"
//Aquí está el código para eso:

enum TransportOption {
    case airplane, helicopter, bicycle, car, scooter
}
let transport = TransportOption.airplane

if transport == .airplane || transport == .helicopter {
    print("Lets fly")
} else if transport == .bicycle{
    print("I hope there's a bike path...")
} else if transport == .car {
    print("Time to get stuck in traffic")
} else {
    print("I'm going to hire a scooter now!")
}

/* Me gustaría destacar algunas partes de ese código:
 
 Cuando establecemos el valor de , transportdebemos dejar claro que nos referimos a TransportOption.airplane. No podemos escribirlo simplemente .airplaneporque Swift no entiende que nos referimos a la TransportOptionenumeración.
 Una vez que eso ha sucedido, no necesitamos escribir TransportOptionmás porque Swift sabe transportque debe ser algún tipo de TransportOption. Por lo tanto, podemos verificar si es igual a .airplaneen lugar de TransportOption.airplane.
 El código que se utiliza ||para comprobar si transportes igual a .airplane o igual a .helicopter, y si alguno de ellos es verdadero, entonces la condición es verdadera y se imprime "¡A volar!".
 Si la primera condición falla (si el modo de transporte no es .airplaneó .helicopter), se ejecuta la segunda condición: ¿el modo de transporte es .bicycle? Si es así, se imprime “Espero que haya una ciclovía…”.
 Si no vamos en bicicleta, comprobamos si vamos en coche. Si es así, aparece impreso el mensaje “Es hora de quedarse atrapado en el tráfico”.
 Finalmente si todas las condiciones anteriores fallan entonces elsese ejecuta el bloque, y significa que vamos en scooter.*/
