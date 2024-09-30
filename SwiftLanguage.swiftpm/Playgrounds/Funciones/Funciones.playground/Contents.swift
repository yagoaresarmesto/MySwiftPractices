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
