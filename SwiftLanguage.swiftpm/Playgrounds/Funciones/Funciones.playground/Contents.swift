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
