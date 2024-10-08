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
