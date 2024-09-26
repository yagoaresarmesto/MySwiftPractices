import UIKit

/** Ejercicio 1: Creación de Variables y Constantes
 Crea una variable llamada age y asígnale tu edad.
 Crea una constante llamada birthYear con el año en que naciste.
 Calcula el año actual usando age y birthYear, asignándolo a una nueva variable llamada currentYear. (Usa operaciones aritméticas). */

var age = 23
let birthYear = 2001

var currentYear = age + birthYear
print(currentYear)

/**Ejercicio 2: Manipulación de Strings
 Crea una constante llamada firstName con tu primer nombre y una constante llamada lastName con tu apellido.
 Crea una nueva variable llamada fullName que concatene firstName y lastName con un espacio en medio.
 Imprime el número de caracteres de fullName usando .count.
 Verifica si fullName empieza con tu primer nombre usando .hasPrefix y termina con tu apellido usando .hasSuffix. */

let firstName = "Yago"
let lastName = "Ares Armesto"

var fullName = "\(firstName) \(lastName)"
print(fullName.count)

if fullName.hasPrefix(firstName){
    print(firstName)
}
if fullName.hasSuffix(lastName){
    print(lastName)
}

/** Ejercicio 3: Operaciones con Enteros
 Crea una variable llamada initialScore con el valor 20.
 Realiza las siguientes operaciones sobre initialScore:
 Suma 10 y guárdalo en una nueva variable newScore.
 Resta 5 a newScore.
 Multiplica el resultado por 2.
 Verifica si el resultado final es múltiplo de 3 usando .isMultiple(of:).*/

var initialScore = 20
var newScore = initialScore + 10

newScore -= 5
newScore *= 2

print(newScore.isMultiple(of: 3)) //Devolvera false

/** Ejercicio 4: Manejo de Doubles y Enteros
 Crea una constante llamada productPrice y asígnale un valor decimal (por ejemplo 99.99).
 Crea una variable llamada discount y asígnale un valor decimal que represente el descuento (por ejemplo 0.15 para un 15% de descuento).
 Calcula el precio final después del descuento y guárdalo en una nueva variable llamada finalPrice.
 Redondea el finalPrice a un número entero y guárdalo en una variable llamada roundedPrice (usa Int() para convertir el número).*/

let productPrice  = 99.99
var discont = 0.15

var finalPrice = productPrice * (1 - discont)

var roundedPrice = Int(finalPrice)
print(roundedPrice)

/** Ejercicio 5: Conversión de Tipos
 Crea una constante llamada wholeNumber con un valor entero.
 Crea una variable llamada decimalValue con un número decimal.
 Realiza las siguientes conversiones:
 Suma wholeNumber convertido a decimal (usa Double()) con decimalValue y asigna el resultado a una nueva variable sum.
 Convierte decimalValue a entero y réstalo de wholeNumber, guardando el resultado en una variable difference.*/

let wholeNumber = 12
var decimalNumber = 31.2

var sum = Double(wholeNumber) + decimalNumber
print(sum)

var difference = wholeNumber + Int(decimalNumber)
print(difference)

/**Ejercicio Opcional: Desafío de Mezcla de Strings y Enteros
 Crea una constante llamada username y asígnale tu nombre.
 Crea una variable llamada points con un valor inicial de 100.
 Combina username y points en una nueva constante llamada statusMessage que diga algo como "Pablo tiene 100 puntos".
 Realiza operaciones con points (suma, resta) y actualiza el statusMessage cada vez con el nuevo valor de points.*/

let username = "Yago"
var points = 100

var statusMessage = "\(username) tiene \(points) puntos"
print(statusMessage)
points += 10

points -= 15

statusMessage = "\(username) tiene \(points) puntos"
print(statusMessage)
