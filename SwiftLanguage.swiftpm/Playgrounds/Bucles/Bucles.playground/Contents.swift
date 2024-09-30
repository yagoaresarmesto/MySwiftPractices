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

//Antes de terminar con forlos bucles, hay una cosa más que quiero mencionar: a veces quieres ejecutar algún código una cierta cantidad de veces usando un rango, pero en realidad no quieres la variable de bucle; no quieres el ior j, porque no lo usas.

//En esta situación, puedes reemplazar la variable de bucle con un guión bajo, de la siguiente manera:

var lyric = "Haters gonna"

for _ in 1...5 {
    lyric += " hate"
}

print(lyric)
