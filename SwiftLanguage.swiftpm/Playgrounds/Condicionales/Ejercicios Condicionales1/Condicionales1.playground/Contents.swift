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
