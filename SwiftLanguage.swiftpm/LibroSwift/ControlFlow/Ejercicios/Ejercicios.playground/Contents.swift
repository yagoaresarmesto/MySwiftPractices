import UIKit

//Crea una sentencia usando if comparando si 500 es más grande que 200 (utiliza el comparador >). Dentro del scope del if añade un print con el mensaje "El número es mayor"

if 500 > 200 {
    print("El número es mayor")
}

//Ahora, añade un else y añade dentro de su scope otro print. Por ejemplo puedes añadir "El número es menor"

if 500 > 200 {
    print("El número es mayor")
}else{
    print("El número es menor")
}

//Encapsula la condición del if en una variable y úsala como condición del if

var numero1 = 500
var numero2 = 200

if numero1 > numero2 {
    print("El número es mayor")
}else{
    print("El número es menor")
}

//Escribe el siguiente código en un Playground y antes de compilar analiza las condiciones ¿qué valor crees que se mostrará por consola?

var batteryLevel = 50

if batteryLevel > 99 {
    print("Batería alta")
} else if batteryLevel > 40 {
    print("Batería Media")
} else if batteryLevel < 60 {
    print("Batería Baja")
}

//Las segunda condición, porque cumple esa antes. Por tanto nunca pasará por la tercera

//Escribe el siguiente código en un Playground y antes de compilar analízalo, ¿qué valor crees que se mostrará por consola? ¿Por qué?

var youtubeChannel = "SwiftBeta"

switch youtubeChannel {
case let x where youtubeChannel.count > 20:
    print("Youtube count > 20")
default:
    print("Default")
}

//La opcion default, porque no cumple el número de caracteres

//Transforma el código del ejercicio 3 pero esta vez usando un if y else

if youtubeChannel.count > 20 {
    print("Youtube count > 20")
}else {
    print("Default")
}

//Itera y printa el contenido de la siguiente colección usando un for

let values = ["1", "2", "3", "4", "5"]
var contador2 = 0

for value in values {
    print(value)
}

print("______")
//¿Qué condición hay que añadir al for para mostrar solo los números impares?

let numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

for number in numbers where number % 2 != 0{ //Tmb podría haber usado .isMultiple(of: 2)
    print(number)
}
//Itera y printa las keys y valores de la siguiente colección usado un for

let dictionary: [String : Any] = [
    "name": "SwiftBeta",
    "numberOfSubscribers": 2500,
    "Youtube Channel": "@SwiftBeta"
]

for (key, value) in dictionary {
    print("Key -> \(key)/ Value -> \(value)")
}

//Itera la siguiente colección usando while o repeat-while

let colors = ["blue", "orange", "red", "green"]

var contador = 0

while contador < colors.count {
    print(colors[contador])
    contador += 1
}

//Con el siguiente Enum crea un switch para controlar cada case, dentro de cada case añade un print para mostrar un valor por consola.

enum Device {
    case iPhone
    case iPad
    case mac
    case appleWatch
}

let device: Device = .iPhone

switch device {
case .iPhone:
    print("Un iPhone")
case .iPad:
    print("Un iPad")
case .mac:
    print("Un mac")
case .appleWatch:
    print("Un appleWatch")
}


