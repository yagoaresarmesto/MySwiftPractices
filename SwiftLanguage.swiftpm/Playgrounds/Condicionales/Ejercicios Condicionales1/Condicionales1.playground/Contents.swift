import UIKit
/**
 Ejercicio 1: Edad y Condiciones
 Crea una variable age que almacene la edad de una persona.
 Escribe un condicional que imprima "Eres mayor de edad" si la edad es 18 o más, y "Eres menor de edad" si es menos de 18.
 */

var age = 17

if age >= 18 {
    print("Eres mayor de edad")
} else {
    print("Eres menor de edad")
}

/**
 Ejercicio 2: Comparación de cadenas
 Crea dos variables firstName y lastName que almacenen un primer nombre y un apellido.
 Escribe un condicional que compare las dos cadenas:
 Si firstName es menor que lastName en orden alfabético, imprime "firstName viene antes que lastName".
 Si firstName es mayor, imprime "lastName viene antes que firstName".*/

var firstName = "Yago"

var lastName = "Ares Armesto"

if firstName > lastName {
    print("\(lastName) viene antes que \(firstName)")
} else {
    print("\(firstName) viene antes que \(lastName)")
}

/**
 Ejercicio 3: Control de velocidad
 Crea una variable speed que almacene la velocidad de un coche.
 Si la velocidad es mayor o igual a 120, imprime "Vas demasiado rápido". Si la velocidad es mayor o igual a 80, imprime "Vas rápido, pero dentro del límite". Si la velocidad es menor que 80, imprime "Estás conduciendo a una velocidad segura" */

var speed = 90

if speed >= 120 {
    print("Vas demasiado rápido")
} else if speed >= 80 {
    print("Vas rápido, pero dentro del límite de velocidad")
} else if speed < 80 {
    print("Estas conduciendo a una velocidad segura")
}


/**Ejercicio 4: Verificar cadena vacía
 Crea una variable email que almacene una dirección de correo.
 Si el correo es una cadena vacía, asigna un valor predeterminado "No se ha proporcionado un correo". Luego, imprime "Tu correo es: email". */


var email = "yagofingoi1234@gmail.com"

if email.isEmpty {
    print("No se ha proporcionado un correo")
} else {
    print("Tu correo es: \(email)")
}

/**Ejercicio 5: Control de lista de números
 Crea un array de enteros vacío llamado numberList.
 Escribe un condicional que agregue un número al array usando append(). Luego, si la lista contiene más de 5 números, elimina el primero de la lista.
 Imprime el contenido del array en cada paso. */

var numberList: [Int] = []

numberList.append(1)

print(numberList)

numberList.append(2)
numberList.append(3)
numberList.append(4)
numberList.append(5)
numberList.append(6)

if numberList.count > 5 {
    numberList.remove(at: 0)
    print(numberList)
}



/**Ejercicio Opcional 6: Control de calificaciones
 Crea una variable grade que almacene una calificación de un estudiante.
 Escribe un condicional que imprima:
 "Aprobado con sobresaliente" si la nota es mayor o igual a 90.
 "Aprobado" si la nota está entre 60 y 89.
 "Suspendido" si la nota es menor de 60.
 */

var grade = 60

if grade >= 90 {
    print("Aprobado con sobresaliente")
}else if grade >= 60 && grade <= 90 {
    print("Aprobado")
}else {
    print("Suspendido")
}

/**Ejercicio 1: Categoría de edad
 Crea una variable age que almacene la edad de una persona.
 Usa un condicional múltiple (if, else if, else) para imprimir:
 Si la edad es menor que 13, imprime "Eres un niño".
 Si la edad es entre 13 y 17, imprime "Eres un adolescente".
 Si la edad es 18 o mayor, imprime "Eres un adulto". */

var age2 = 24

if age2 < 13 {
    print("Eres un niño")
}else if age2 >= 13 && age2 <= 17 {
    print("Eres un adolescente")
}else{
    print("Eres un adulto")
}
/**Ejercicio 2: Actividades según el clima
 Define una enumeración Weather que incluya los siguientes casos: .sunny, .rainy, .cloudy, .windy.
 Crea una variable currentWeather de tipo Weather y asígnale un valor.
 Usa un switch para imprimir una actividad según el clima:
 Si el clima es .sunny, imprime "Ir a la playa".
 Si es .rainy, imprime "Quedarse en casa con un libro".
 Si es .cloudy, imprime "Dar un paseo corto".
 Si es .windy, imprime "Volar una cometa".*/

enum Weather {
    case sunny, rainy, cloudy, windy
}

var currentWheather = Weather.sunny

switch currentWheather {
case .sunny:
    print("Ir a la playa")
case .rainy:
    print("Quedarse en casa con un libro")
case .cloudy:
    print("Dar un paseo corto")
case .windy:
    print("Volar una cometa")
default: //No hace default realmente porque ya hemos cubrido todas las posibilidades
    print("No hay opción")
}
/**Ejercicio 3: Verificación de compra
 Crea una variable balance que almacene el saldo de una persona y una variable price que almacene el precio de un artículo.
 Usa el operador ternario para imprimir:
 "Compra realizada" si el saldo es mayor o igual al precio.
 "Saldo insuficiente" si no alcanza para comprar.*/

var balance = 200
var price = 40

let canPay = balance - price >= 0 ? "Compra realizada" : "Saldo insuficiente"
print(canPay)

/**Ejercicio 4: ¿Es hora de la siesta?
 Crea una variable hour que almacene la hora en formato de 24 horas (por ejemplo, 14 para las 2 PM).
 Usa el operador ternario para imprimir:
 "Es hora de la siesta" si la hora está entre 13 y 15.
 "No es hora de la siesta" si no lo está.
 */

var hour = 14

let rest = hour >= 13 && hour <= 15 ? "Es hora de la siesta" : "No es la hora de la siesta"

/**Define una enumeración Transport con los casos .walking, .bicycle, .car, y .bus.
 Crea una variable distance que almacene la distancia en kilómetros.
 Usa un switch para recomendar un medio de transporte:
 Si la distancia es menor a 1 km, imprime "Camina".
 Si está entre 1 y 5 km, imprime "Ve en bicicleta".
 Si está entre 5 y 20 km, imprime "Toma el coche".
 Si es mayor a 20 km, imprime "Toma el bus".*/

enum Transport {
    case walking, bicycle, car, bus //No lo uso porque realmente ni lo necesito
}

var distance = 7.0  // Distancia en kilómetros

switch distance {
case 0..<1:
    print("Camina")
case 1..<5:
    print("Ve en bicicleta")
case 5..<20:
    print("Toma el coche")
default:
    print("Toma el bus")
}

/**Ejercicio Opcional 6: Niveles de acceso
 Crea una enumeración AccessLevel con los siguientes casos: .admin, .user, .guest.
 Crea una variable userAccessLevel de tipo AccessLevel.
 Usa un switch para imprimir:
 Si el nivel de acceso es .admin, imprime "Tienes acceso total".
 Si es .user, imprime "Tienes acceso limitado".
 Si es .guest, imprime "Tienes acceso muy limitado".
 */

enum AccessLevel {
    case admin, user, guest
}

var accessLevel = AccessLevel.admin

switch accessLevel {
case .admin:
    print("Tienes acceso total")
case .user:
    print("Acceso limitado")
case .guest:
    print("Tienes acceso muy limitado")
}
