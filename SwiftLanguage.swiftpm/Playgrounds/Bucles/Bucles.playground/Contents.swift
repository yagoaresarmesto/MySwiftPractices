import UIKit

//Bucles for
//Las computadoras son realmente excelentes para realizar trabajos repetitivos, y Swift hace que sea fácil repetir algún código una cantidad fija de veces, o una vez para cada elemento de una matriz, diccionario o conjunto.

//Comencemos con algo simple: si tenemos una matriz de cadenas, podemos imprimir cada cadena de la siguiente manera:

let platforms = ["iOS","macOS","tvOS","watchOS"]

for os in platforms {
    print("Swift works great on \(os).")
}
//Esto recorre todos los elementos de platforms, colocándolos uno por uno en os. No lo hemos creado osen otro lugar; se crea para nosotros como parte del bucle y se pone a disposición solo dentro de las llaves de apertura y cierre.

//Debo decir que el nombre os no tiene nada de especial; podríamos haber escrito esto en su lugar:

for name in platforms { //Realmente puedes poner lo que quieras
    print("Swift works great on \(name).")
}

//En lugar de recorrer una matriz (o un conjunto, o un diccionario; ¡la sintaxis es la misma!), también puedes recorrer un rango fijo de números. Por ejemplo, podríamos imprimir la tabla del 5 del 1 al 12 de esta manera:

for i in 1...12 {
    print("5x \(i) is \(5 * i)")
}
//Hay un par de cosas nuevas allí, así que detengámonos y examinémoslas:

/*Utilicé la variable de bucle i, que es una convención de codificación común para "número con el que estás contando". Si estás contando un segundo número, utilizarías j, y si estás contando un tercero, utilizarías k, pero si estás contando un cuarto, tal vez deberías elegir mejores nombres de variable.
 La 1...12parte es un rango y significa “todos los números enteros entre 1 y 12, así como también 1 y 12”. Los rangos son su propio tipo de datos único en Swift.*/

//También puedes poner bucles dentro de bucles, llamados bucles anidados , de esta manera:

for i in 1...12 {
    print("The \(i) times table")
    
    for j in 1...12 {
        print("   \(j) x \(i) is \(j * i )")
    }
    print()
}

//Swift tiene un tipo de rango similar pero diferente que cuenta hasta el número final, pero lo excluye..< : . Esto se ve mejor en el código:

for i in 1...5 {
    print("Counting from 1 throught 5: \(i)")
}

for i in 1..<5 { //Consejo: ..< es realmente útil para trabajar con matrices, donde contamos desde 0 y a menudo queremos contar hasta el número de elementos de la matriz, pero excluyendo este.
    print("Counting 1 up to 5: \(i)")
}

//Antes de terminar con for los bucles, hay una cosa más que quiero mencionar: a veces quieres ejecutar algún código una cierta cantidad de veces usando un rango, pero en realidad no quieres la variable de bucle; no quieres el ior j, porque no lo usas.

//En esta situación, puedes reemplazar la variable de bucle con un guión bajo, de la siguiente manera:

var lyric = "Haters gonna"

for _ in 1...5 {
    lyric += " hate"
}

print(lyric)

//Bucle while

//Swift tiene un segundo tipo de bucle llamado while: si se le proporciona una condición, el whilebucle ejecutará continuamente el cuerpo del bucle hasta que la condición sea falsa.

//Aunque todavía verás whilebucles de vez en cuando, no son tan comunes como forlos bucles. Por eso, quiero hablar de ellos para que sepas que existen, pero no nos detengamos demasiado en ellos, ¿de acuerdo?

var countdown = 10

while countdown > 0 {
    print("\(countdown)...")
    countdown -= 1
}

print("Blast OFF")

//Los bucles while son muy útiles cuando no sabes cuántas veces se repetirá el bucle. Para demostrarlo, quiero presentarte una función muy útil que Intambos Doubletienen: random(in:). Dale un rango de números con los que trabajar y devolverá un valor aleatorio Into Doublealgún valor dentro de ese rango.

let id = Int.random(in: 1...1000)
print(id)

//Y esto con un double
let amount = Double.random(in: 0...1)

//Podemos usar esta funcionalidad con un whilebucle para tirar una y otra vez algunos dados virtuales de 20 caras, finalizando el bucle solo cuando salga un 20, un golpe crítico para todos los jugadores de Dungeons & Dragons.

// create an integer to store our roll
var roll = 0

// carry on looping until we reach 20
while roll != 20 {
    // roll a new dice and print what it was
    roll = Int.random(in: 1...20)
    print("I rolled a \(roll)")
}

// if we're here it means the loop ended – we got a 20!
print("Critical hit!")

//Te encontrarás usando bucles fory whileen tu propio código: forlos bucles son más comunes cuando tienes una cantidad finita de datos para revisar, como un rango o una matriz, pero whilelos bucles son realmente útiles cuando necesitas una condición personalizada.


//Break & continue

//Swift nos ofrece dos formas de omitir uno o más elementos en un bucle: continueomite la iteración actual del bucle y breakomite todas las iteraciones restantes. Al igual que whilelos bucles, a veces se utilizan, pero en la práctica mucho menos de lo que se podría pensar.

let filenames = ["me.jpg", "work.txt", "sophie.jpg", "logo.psd"]

for filename in filenames {
    if filename.hasSuffix(".jpg") == false {
        continue
    }
    
    print("Found picture: \(filename)")
}
//Veámoslos individualmente, comenzando con continue. Cuando estás recorriendo un array de datos, Swift tomará un elemento del array y ejecutará el cuerpo del bucle usándolo. Si llamas continuedentro de ese cuerpo del bucle, Swift detendrá inmediatamente la ejecución de la iteración actual del bucle y saltará al siguiente elemento del bucle, donde continuará normalmente. Esto se usa comúnmente cerca del comienzo de los bucles, donde eliminas las variables del bucle que no pasan una prueba de tu elección.

//Esto crea una matriz de cadenas de nombres de archivos, luego recorre cada una de ellas y verifica que tenga el sufijo “.jpg”, es decir, que sea una imagen. continuese utiliza con todos los nombres de archivos que no pasan esa prueba, de modo que se omite el resto del cuerpo del bucle.


//En cuanto a break, sale de un bucle inmediatamente y omite todas las iteraciones restantes. Para demostrarlo, podríamos escribir un código para calcular 10 múltiplos comunes de dos números:

let number1 = 4
let number2 = 14

var multiples = [Int]()

for i in 1...100_000{
    if i.isMultiple(of: number1) && i.isMultiple(of: number2) {
        multiples.append(i)
        
        if multiples.count == 10 {
            break
        }
    }
}

print(multiples)

//Esto hace bastante:

/*
Crea dos constantes para contener dos números.
Cree una variable de matriz de números enteros que almacenará múltiplos comunes de nuestros dos números.
Cuente del 1 al 100 000 y asigne cada variable de bucle a i.
Si ies un múltiplo del primer y del segundo número, añádalo a la matriz de enteros.
Una vez que alcanzamos 10 múltiplos, llamamos breakpara salir del bucle.
Imprima la matriz resultante.*/

//Por lo tanto, utilícelo continuecuando desee omitir el resto de la iteración del bucle actual, y utilícelo breakcuando desee omitir todas las iteraciones restantes del bucle.
