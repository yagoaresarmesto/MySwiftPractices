import UIKit

//Funciones

//Por ejemplo, digamos que tuviéramos este código lindo y simple:

print("Welcome to my app!")
print("By default This prints out a conversion")
print("chart from centimeters to inches, but you")
print("can also set a custom range if you want.")
//Este es un mensaje de bienvenida para una aplicación y es posible que desees que se imprima cuando se inicia la aplicación o quizás cuando el usuario solicita ayuda.

//Pero ¿qué sucedería si quisieras que estuviera en ambos lugares? Sí, podrías copiar esas cuatro print()líneas y ponerlas en ambos lugares, pero ¿qué sucedería si quisieras ese texto en diez lugares? ¿O si quisieras cambiar la redacción más adelante? ¿Realmente recordarías cambiarla en todos los lugares donde apareciera en tu código?

func showWelcome() {
    print("Welcome to my app!")
    print("By default This prints out a conversion")
    print("chart from centimeters to inches, but you")
    print("can also set a custom range if you want.")
}

//Comienza con la funcpalabra clave, que marca el inicio de una función.
//Vamos a nombrar la función showWelcome. Puede ser cualquier nombre que desee, pero intente que sea fácil de recordar:  printInstructions(), displayHelp(), etc. son buenas opciones.
//El cuerpo de la función está contenido dentro de las llaves de apertura y cierre, al igual que el cuerpo de los bucles y el cuerpo de las condiciones.

//En nuestro caso, podemos llamar a nuestra función de esta manera:

showWelcome()

//¿Qué hacen realmente los paréntesis ? Bueno, ahí es donde añadimos opciones de configuración para nuestras funciones: podemos pasar datos que personalizan el modo en que funciona la función, de modo que esta se vuelve más flexible.


//Podemos crear nuestras propias funciones que estén abiertas a la configuración, todo esto colocando código adicional entre los paréntesis cuando creamos nuestra función. A esta se le debe asignar un solo número entero, como 8, y calcular las tablas de multiplicación para ese número del 1 al 12.

func printTimesTables(number:Int){
    for i in 1...12 {
        print("\(i) x \(number) is \(i * number)")
    }
}
printTimesTables(number: 5)

//Esta denominación de parámetros se vuelve aún más importante cuando se tienen varios parámetros. Por ejemplo, si quisiéramos personalizar el orden de las tablas de multiplicación, podríamos hacer que el final de nuestro rango se establezca mediante un segundo parámetro, de esta manera:

func printTimesTables(number: Int, end: Int) {
    for i in 1...end {
        print("\(i) x \(number) is \(i * number)")
    }
}

printTimesTables(number: 5, end: 20)

//Devolver valores


//La sqrt()función acepta un parámetro, que es el número del cual queremos calcular la raíz cuadrada, y seguirá adelante y realizará el trabajo y luego enviará de vuelta la raíz cuadrada.

//Por ejemplo, podríamos escribir esto:

let root = sqrt(169)
print(root)


//Si desea devolver su propio valor desde una función, debe hacer dos cosas:

//Escriba una flecha y luego un tipo de datos antes de la llave de apertura de su función, que le indica a Swift qué tipo de datos se enviarán de vuelta.
//Utilice la returnpalabra clave para enviar de vuelta sus datos.

func rollDice() -> Int {
    return Int.random(in: 1...6)
}

let result = rollDice()
print(result)
//Con este método, puedes llamar rollDice()a muchos lugares de tu programa y todos ellos utilizarán un dado de 6 caras. Pero si en el futuro decides que quieres utilizar un dado de 20 caras, solo tienes que cambiar esa función para que el resto de tu programa se actualice.

//Importante: Cuando dices que tu función devolverá un Int, Swift se asegurará de que siempre devuelva un Int; no puedes olvidarte de enviar un valor, porque tu código no se compilará.



//Probemos con un ejemplo más complejo: ¿dos cadenas contienen las mismas letras, independientemente de su orden? Esta función debería aceptar dos parámetros de cadena y devolver verdadero si sus letras son las mismas; por lo tanto, “abc” y “cab” deberían devolver verdadero porque ambas contienen una “a”, una “b” y una “c”.

func areLettersIdentical(string1: String, string2:String) -> Bool {
    let first = string1.sorted()
    let second = string2.sorted()
    return first == second
}

areLettersIdentical(string1: "Holaa", string2: "Hola")

/*Vamos a desglosarlo:
 
 Crea una nueva función llamada areLettersIdentical().
 La función acepta dos parámetros de cadena string1y string2.
 La función dice que devuelve un Bool, por lo que en algún momento siempre debemos devolver verdadero o falso.
 Dentro del cuerpo de la función, ordenamos ambas cadenas y luego las usamos ==para compararlas: si son iguales, devolverá verdadero; de lo contrario, devolverá falso.*/

//Ese código ordena string1y string2asigna sus valores ordenados a nuevas constantes firsty second. Sin embargo, eso no es necesario: podemos omitir esas constantes temporales y simplemente comparar los resultados de sorted()directamente, de esta manera:

func areLettersIndentical2(string1 : String, string2: String) -> Bool {
    return string1.sorted() == string2.sorted()
}

//Debido a esto, cuando una función tiene solo una línea de código, podemos eliminar la return palabra clave por completo, de esta manera:

func areLettersIndentical3(string1 : String, string2: String) -> Bool {
    string1.sorted() == string2.sorted()
}
//Podemos volver atrás y hacer lo mismo para la rollDice()función también:

func rollDice2() -> Int {
    Int.random(in: 1...6)
}
//Recuerde, esto solo funciona cuando su función contiene una sola línea de código y, en particular, esa línea de código debe devolver realmente los datos que prometió devolver.


//Probemos con un tercer ejemplo. ¿Recuerdas el teorema de Pitágoras de la escuela? Dice que si tienes un triángulo con un ángulo recto en su interior, puedes calcular la longitud de la hipotenusa elevando al cuadrado los otros dos lados, sumándolos y luego calculando la raíz cuadrada del resultado.

//Ya aprendiste a usar sqrt(), por lo que podemos construir una pythagoras()función que acepte dos números decimales y devuelva otro:


func pythagoras(a: Double, b: Double) -> Double {
    let input = a * a + b * b
    let root = sqrt(input)
    return root
}

let c = pythagoras(a: 3, b: 4)
print(c)
//Entonces, esa es una función llamada pythagoras(), que acepta dos Doubleparámetros y devuelve otro Double. Dentro de ella, eleva al cuadrado ay blos suma, luego los pasa a sqrt()y envía el resultado.

//Esa función también se puede resumir en una sola línea y returneliminar su palabra clave. Inténtalo. Como siempre, te mostraré mi solución después, pero es importante que la pruebes.

func pythagoras2(a: Double, b: Double) -> Double {
    sqrt(a * a + b * b)
}

//Hay una última cosa que quiero mencionar antes de continuar: si tu función no devuelve un valor, aún puedes usar returnby himself para forzar la función a salir antes. Por ejemplo, quizás tengas una verificación de que la entrada coincide con lo que esperabas y, si no es así, deseas salir de la función inmediatamente antes de continuar.


//Devolver múltiples valores

//Cuando desea devolver un solo valor de una función, escriba una flecha y un tipo de datos antes de la llave de apertura de su función, de esta manera:

func isUppercase(string: String)-> Bool {
    string == string.uppercased()
}

//Si desea devolver dos o más valores de una función, puede utilizar una matriz. Por ejemplo, aquí se muestra una matriz que devuelve los datos de un usuario

func getUser()-> [String] {
    ["Taylor", "Swift"]
}

let user = getUser()

print("Name: \(user[0]) \(user[1])")

//Eso es problemático, porque es difícil recordar qué son user[0]y user[1], y si alguna vez ajustamos los datos en esa matriz, entonces user[0]y user[1]podría terminar siendo otra cosa o tal vez no existir en absoluto.

//Podríamos utilizar un diccionario en su lugar, pero eso tiene sus propios problemas:

func getUser1() -> [String: String] {
    [
        "firstName": "Yago",
        "lastName": "Ares"
    ]
}

let user2 = getUser1()
print("Name: \(user2["firstName", default: "Anonymous"]) \(user2["lastName", default: "Anonymous"])")

//Sí, ahora hemos dado nombres significativos a las distintas partes de nuestros datos de usuario, pero observe esa llamada a print(): aunque sabemos que ambos firstNamey lastNameexistirán, aún necesitamos proporcionar valores predeterminados en caso de que las cosas no sean lo que esperamos.

//Ambas soluciones son bastante malas, pero Swift tiene una solución en forma de tuplas . Al igual que las matrices, los diccionarios y los conjuntos, las tuplas nos permiten colocar múltiples fragmentos de datos en una sola variable, pero a diferencia de esas otras opciones, las tuplas tienen un tamaño fijo y pueden tener una variedad de tipos de datos.

//Así es como se ve nuestra función cuando devuelve una tupla:

func getUser2() -> (firstName: String, lastName: String) {
    (firstName: "Taylor", lastName: "Swift")
}

let user3 = getUser2()
print("Name: \(user3.firstName) \(user3.lastName)")

//Vamos a desglosarlo…

/* Nuestro tipo de retorno ahora es (firstName: String, lastName: String), que es una tupla que contiene dos cadenas.
 Cada cadena de nuestra tupla tiene un nombre. Estos no están entre comillas: son nombres específicos para cada elemento de nuestra tupla, a diferencia de los tipos de claves arbitrarias que teníamos en los diccionarios.
 Dentro de la función enviamos de vuelta una tupla que contiene todos los elementos que prometimos, adjuntos a los nombres: firstNamese establece en “Taylor”, etc.
 Cuando llamamos a getUser(), podemos leer los valores de la tupla usando los nombres de clave: firstName, lastName, etc.*/

//Entonces, las tuplas tienen una ventaja clave sobre los diccionarios: especificamos exactamente qué valores existirán y qué tipos tienen, mientras que los diccionarios pueden o no contener los valores que solicitamos.

//En primer lugar, si estás devolviendo una tupla desde una función, Swift ya sabe los nombres que le estás dando a cada elemento de la tupla, por lo que no necesitas repetirlos cuando uses return. Por lo tanto, este código hace lo mismo que nuestra tupla anterior:

func getUser4() -> (firstName: String, lastName: String) {
    ("Taylor", "Swift")
}

//En segundo lugar, a veces te encontrarás con tuplas cuyos elementos no tienen nombre. Cuando esto sucede, puedes acceder a los elementos de la tupla mediante índices numéricos que comienzan desde 0, de la siguiente manera:

func getUser5() -> (String, String) {
    ("Yago", "Ares")
}

let user5 = getUser5()
print("Name: \(user5.0) \(user5.1)")

//Estos índices numéricos también están disponibles con tuplas que tienen elementos nombrados, pero siempre he encontrado que es preferible usar nombres.

//Finalmente, si una función devuelve una tupla, puedes dividirla en valores individuales si lo deseas.

//Para entender lo que quiero decir con esto, primero eche un vistazo a este código:

func getUser6() -> (firstName: String, lastName: String) {
    (firstName: "Taylor", lastName:"Swift")
}

let user6 = getUser6()
let firstName = user6.firstName
let lastName = user6.lastName

print("Name: \(firstName) \(lastName)")

//Esto se remonta a la versión nombrada de getUser(), y cuando sale la tupla, copiamos los elementos desde allí en contenidos individuales antes de usarlos. No hay nada nuevo aquí; solo estamos moviendo un poco los datos.

//Sin embargo, en lugar de asignar la tupla a usery luego copiar valores individuales desde allí, podemos omitir el primer paso: podemos separar el valor de retorno de getUser()en dos constantes separadas, de esta manera:

let(firstName2, lastName2) = getUser6()

print("Name: \(firstName2) \(lastName2)")

//Al principio, esa sintaxis puede dolerte la cabeza, pero en realidad es solo una forma abreviada de lo que teníamos antes: convertir la tupla de dos elementos que obtenemos getUser()en dos constantes separadas.

//De hecho, si no necesitas todos los valores de la tupla, puedes ir un paso más allá y usar _para indicarle a Swift que ignore esa parte de la tupla:

let (firstName3, _) = getUser6()
print("Name: \(firstName3)")


//Personalizar parámetros

//Has visto cómo a los desarrolladores de Swift les gusta nombrar los parámetros de sus funciones, porque así es más fácil recordar lo que hacen cuando se llama a la función. Por ejemplo, podríamos escribir una función para lanzar un dado una determinada cantidad de veces, utilizando parámetros para controlar la cantidad de caras del dado y la cantidad de lanzamientos:

func rollDice(sides: Int, count: Int) -> [Int] {
    //Array vacío
    var rolls = [Int]()
    
    //Roll as many dice as needed
    for _ in 1...count {
        //Add each result to our array
        let roll = Int.random(in: 1...sides)
        rolls.append(roll)
    }
    
    //Send back all the rolls
    return rolls
    
}

//Incluso si volvieras a este código seis meses después, estoy seguro de que rollDice(sides: 6, count: 4)se explica por sí solo.
let rolls = rollDice(sides: 6, count: 4)
print(rolls)

//Si agregamos un guión bajo antes del nombre del parámetro, podemos eliminar la etiqueta del parámetro externo de la siguiente manera:

func isUppercase2(_ string: String) -> Bool {
    string == string.uppercased()
}

let string = "HELLO, WORLD"
let result2 = isUppercase2(string)

//Proporcionar valores predeterminados para los parámetros

//Agregar parámetros a las funciones nos permite agregar puntos de personalización, de modo que las funciones puedan operar con diferentes datos según nuestras necesidades. A veces queremos que estos puntos de personalización estén disponibles para mantener la flexibilidad de nuestro código, pero otras veces no queremos pensar en ello: queremos lo mismo nueve veces de cada diez.

//Por ejemplo, anteriormente vimos esta función:

func printTimesTables2(for number: Int, end: Int){
    for i in 1...end {
        print("\(i) x \(number) is \(i * number)")
        
    }
}

printTimesTables2(for: 5, end: 20)

//Esto imprime cualquier tabla de multiplicación, comenzando por 1 multiplicado por el número hasta cualquier punto final. Ese número siempre va a cambiar según la tabla de multiplicación que queramos, pero el punto final parece un buen lugar para proporcionar un valor predeterminado sensato: es posible que queramos contar hasta 10 o 12 la mayor parte del tiempo, aunque aún dejamos abierta la posibilidad de llegar a un valor diferente algunas veces.

//Para solucionar este problema, Swift nos permite especificar valores predeterminados para cualquiera o todos nuestros parámetros. En este caso, podríamos establecer endel valor predeterminado 12, lo que significa que si no lo especificamos, se utilizará automáticamente el valor 12.

func printTimesTables3(for number: Int, end: Int = 12) {
    for i in 1...end {
        print("\(i) x \(number) is \(i * number)")
    }
}

printTimesTables3(for: 5, end: 20)
printTimesTables3(for: 8)

//Observe cómo ahora podemos llamar printTimesTables()de dos maneras diferentes: podemos proporcionar ambos parámetros para los momentos en que lo deseamos, pero si no lo hacemos (si simplemente escribimos printTimesTables(for: 8)), se usará el valor predeterminado de 12 para end.

//Manejar error en funciones

/*Todo el tiempo hay errores, como cuando el archivo que querías leer no existe o cuando los datos que intentabas descargar fallaron porque la red no funcionaba. Si no gestionáramos los errores con elegancia, nuestro código se bloquearía, por eso Swift nos obliga a gestionar los errores o, al menos, a reconocer cuándo pueden ocurrir.
 
 Esto requiere tres pasos:
 
 Informar a Swift sobre los posibles errores que pueden ocurrir.
 Escribir una función que pueda marcar los errores si ocurren.
 Llamar a esa función y manejar cualquier error que pueda ocurrir.
 Trabajemos con un ejemplo completo: si el usuario nos pide que verifiquemos qué tan segura es su contraseña, marcaremos un error grave si la contraseña es demasiado corta o es obvia.
 
 Por lo tanto, debemos comenzar por definir los posibles errores que podrían ocurrir. Esto significa crear una nueva enumeración que se base en Errorel tipo existente de Swift, como se muestra a continuación:*/

enum PasswordError: Error {
    case short, obvious
}

/*Eso dice que hay dos posibles errores con la contraseña: shorty obvious. No define qué significan , solo que existen.
 
 El segundo paso es escribir una función que active uno de esos errores. Cuando se activa un error (o se genera en Swift), estamos diciendo que algo fatal salió mal con la función y, en lugar de continuar de manera normal, termina inmediatamente sin enviar ningún valor.
 
 En nuestro caso, vamos a escribir una función que verifique la fortaleza de una contraseña: si es realmente mala (menos de 5 caracteres o es extremadamente conocida), entonces lanzaremos un error inmediatamente, pero para todas las demás cadenas devolveremos calificaciones como "OK", "Buena" o "Excelente".*/

func checkPassword(_ password: String) throws -> String {
    if password.count < 5 {
        throw PasswordError.short
    }
    
    if password == "12345" {
        throw PasswordError.obvious
    }
    
    if password.count < 8 {
        return "Ok"
    } else if password.count < 10 {
        return "Good"
    } else {
        return "Excelent"
    }
}

//Vamos a desglosarlo…

/*Si una función puede generar errores sin manejarlos por sí misma, debe marcar la función como throwsantes del tipo de retorno.
 No especificamos exactamente qué tipo de error arroja la función, solo que puede arrojar errores.
 Estar marcado con throwsno significa que la función deba arrojar errores, solo que podría hacerlo.
 Cuando llega el momento de generar un error, escribimos throwseguido de uno de nuestros PasswordErrorcasos. Esto hace que la función salga inmediatamente, lo que significa que no devolverá una cadena.
 Si no se producen errores, la función debe comportarse normalmente: debe devolver una cadena. */

//El paso final es ejecutar la función y manejar los errores que puedan ocurrir. Swift Playgrounds es bastante laxo en cuanto al manejo de errores porque está pensado principalmente para el aprendizaje, pero cuando se trata de trabajar con proyectos reales de Swift, verá que hay tres pasos:

/*Iniciar un bloque de trabajo que podría generar errores, utilizando do.
 Llamar a una o más funciones de lanzamiento, utilizando try.
 Manejar cualquier error lanzado usando catch.
 En pseudocódigo se ve así:*/

do {
    try checkPassword("Hola")
} catch {
    print("Handle errors here")
}

//Si quisiéramos escribir try que usando nuestra checkPassword()función actual, podríamos escribir esto:

let string2 = "12345"

do {
    let result = try checkPassword(string2)
    print("Password rating: \(result)")
} catch {
    print("There was an error")
}

//A medida que avances, verás cómo las funciones de lanzamiento están integradas en muchos de los propios marcos de Apple, por lo que, aunque quizás no las crees tú mismo, al menos necesitarás saber cómo usarlas de forma segura.

//Consejo: la mayoría de los errores que genera Apple proporcionan un mensaje significativo que puedes presentarle al usuario si es necesario. Swift lo pone a disposición mediante un errorvalor que se proporciona automáticamente dentro del catchbloque y es común leerlo

let string3 = "12345"
do {
    let result = try checkPassword(string3)
    print("Password rating: \(result)")
} catch PasswordError.short {
    print("Please use a longer password.")
} catch PasswordError.obvious {
    print("I have the same combination on my luggage!")
} catch {
    print("There was an error.")
}


//Claúsulas

//Las funciones son elementos muy potentes en Swift. Sí, has visto cómo puedes llamarlas, pasarles valores y devolver datos, pero también puedes asignarlas a variables, pasarles funciones a otras funciones e incluso devolverles funciones a otras funciones.

func greetUser() {
    print("Hi there!")
}

greetUser()

var greetCopy = greetUser
greetCopy()

//Esto crea una función trivial y la llama, pero luego crea una copia de esa función y la llama. Como resultado, imprimirá el mismo mensaje dos veces.

//Importante: cuando copias una función, no escribes los paréntesis después de ella, sino que son var greetCopy = greetUsery no var greetCopy = greetUser(). Si colocas los paréntesis allí, estás llamando a la función y asignando su valor de retorno a otra cosa.

//Pero ¿qué sucede si desea omitir la creación de una función independiente y simplemente asignar la funcionalidad directamente a una constante o variable? Bueno, resulta que también puede hacerlo:

let sayHello = {
    print("Hi there!")
}

sayHello()

//Pero ¿qué sucede si desea omitir la creación de una función independiente y simplemente asignar la funcionalidad directamente a una constante o variable? Bueno, resulta que también puede hacerlo:

let sayHello2 = {
    print("Hi there!")
}

//Si quieres que el cierre acepte parámetros, estos deben estar escritos de una manera especial.

let sayHello3 = {(name: String) -> String in // Es la inpalabra clave y viene directamente después de los parámetros y el tipo de retorno del cierre
    "Hi \(name)"
}

//Mientras tanto, puede que te surja una pregunta más fundamental: “¿Por qué necesitaría estas cosas?”. Sé que los cierres parecen terriblemente oscuros. Peor aún, parecen oscuros y complicados: muchas, muchas personas realmente tienen dificultades con los cierres cuando los conocen por primera vez, porque son bestias complejas y parece que nunca van a ser útiles.

//Para tener una idea de por qué los cierres son tan útiles, primero quiero presentarles los tipos de funciones . Han visto cómo los números enteros tienen el tipo Int, y los decimales tienen el tipo Double, etc., y ahora quiero que piensen en cómo las funciones también tienen tipos.

//Tomemos la greetUser()función que escribimos antes: no acepta parámetros, no devuelve ningún valor y no genera errores. Si la escribiéramos como una anotación de tipo para greetCopy, escribiríamos esto:

var greetCopy2: () -> Void = greetUser

//Vamos a desglosarlo…

//Los paréntesis vacíos marcan una función que no toma parámetros.
//La flecha significa exactamente lo que significa cuando se crea una función: estamos a punto de declarar el tipo de retorno para la función.
//Voidsignifica “nada”: esta función no devuelve nada. A veces, puede que veas esto escrito como (), pero normalmente lo evitamos porque puede confundirse con la lista de parámetros vacía.

//El tipo de cada función depende de los datos que recibe y envía. Puede parecer simple, pero esconde un problema importante: los nombres de los datos que recibe no forman parte del tipo de la función.

//Podemos demostrar esto con algo más de código:

func getUserData(for id: Int) -> String {
    if id == 1989 {
        return "Taylor Swift"
    }else{
        return "Anonymous"
    }
}

let data: (Int) -> String = getUserData
let user7 = data(1989)
print(user7)

//Esto comienza de manera bastante sencilla: es una función que acepta un entero y devuelve una cadena. Pero cuando tomamos una copia de la función, el tipo de función no incluye el fornombre del parámetro externo, por lo que cuando se llama a la copia, usamos data(1989)en lugar de data(for: 1989)

//Probablemente todavía te estés preguntando por qué todo esto es importante, y todo se aclarará pronto. ¿Recuerdas que dije que podemos usar sorted()una matriz para ordenar sus elementos?

//Significa que podemos escribir código como este:

let team = ["Gloria", "Suzanne", "Piper", "Tiffany", "Tasha"]
let sortedTeam = team.sorted()
print(sortedTeam)

//Eso es realmente genial, pero ¿qué pasaría si quisiéramos controlar esa clasificación? ¿Qué pasaría si siempre quisiéramos que una persona fuera la primera porque era el capitán del equipo y que el resto se ordenara alfabéticamente?

//Bueno, sorted()en realidad nos permite pasar una función de ordenación personalizada para controlar exactamente eso. Esta función debe aceptar dos cadenas y devolver verdadero si la primera cadena debe ordenarse antes que la segunda, o falso si la primera cadena debe ordenarse después de la segunda.

func captainFirstSorted(name1: String, name2: String) -> Bool {
    if name1 == "Suzanne" {
        return true
    } else if name2 == "Suzanne" {
        return false
    }
    
    return name1 < name2
}
 //Por lo tanto, si el primer nombre es Suzanne, devuelve true para que name1se ordene antes de name2. Por otro lado, si name2es Suzanne, devuelve false para que name1se ordene después de name2 . Si ninguno de los nombres es Suzanne, simplemente usa <para realizar una ordenación alfabética normal.

//Como dije, sorted()se puede pasar una función para crear un orden de clasificación personalizado y, siempre que esa función a) acepte dos cadenas y b) devuelva un valor booleano, sorted()se puede usar.

//Eso es exactamente lo que captainFirstSorted()hace nuestra nueva función, por lo que podemos usarla de inmediato:

let captainFirstTeam = team.sorted(by: captainFirstSorted)

print(captainFirstTeam)


//Bien, escribamos un código nuevo que llame sorted()usando un cierre:

let captainFirstTeam2 = team.sorted(by: { (name1: String, name2: String) -> Bool in
    if name1 == "Suzanne" {
        return true
    } else if name2 == "Suzanne" {
        return false
    }

    return name1 < name2
})

