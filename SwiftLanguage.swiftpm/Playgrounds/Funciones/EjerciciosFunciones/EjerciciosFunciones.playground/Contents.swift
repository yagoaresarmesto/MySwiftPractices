import UIKit

/**Ejercicio 1: Crear una función de bienvenida
 Crea una función llamada mostrarBienvenida que imprima un mensaje de bienvenida.
 Llama a la función dos veces en tu programa.*/

func mostrarBienvenida () {
    print("Bienvenido")
}
mostrarBienvenida()
mostrarBienvenida()

/**Ejercicio 2: Tabla de multiplicar personalizada
 Crea una función llamada tablaMultiplicar que acepte dos parámetros: un número y un rango.
 La función debe imprimir la tabla de multiplicar del número hasta el rango indicado.
 Llama a la función y muestra la tabla de multiplicar del número 7 hasta 15.
 */
func tablaMultiplicar (numero: Int, rango: Int) {
    for i in 1...rango {
        print("\(numero) x \(i) es \(numero * i)")
    }
}

tablaMultiplicar(numero: 7, rango: 15)

/** Ejercicio 3: Función que devuelve un valor
 Crea una función llamada tirarDado que devuelva un número aleatorio entre 1 y 6.
 Llama a la función y almacena el resultado en una variable.
 Imprime el valor del dado.*/

func tirarDado() -> Int {
    return Int.random(in: 1...6)
}

let resultado = tirarDado()
print("El número del dado es: \(resultado)")



/** Ejercicio 4: Comprobación de vocales
 Crea una función llamada contarVocales que acepte una cadena de texto como parámetro.
 La función debe devolver el número total de vocales en la cadena.
 Llama a la función con una frase y muestra el número de vocales encontradas.*/


func contarVocales (cadena: String) -> Int {
    let vocales = "aeiouAEIOU"
    var contador = 0
    
    for caracter in cadena {
        if vocales.contains(caracter){
            contador += 1
        }
    }
    return contador
}

let frase = contarVocales(cadena: "Hola me llamo Yago y son joven")
print(frase)


/** Ejercicio 5: Pitágoras simplificado
 Crea una función llamada hipotenusa que acepte dos valores a y b y calcule la hipotenusa de un triángulo rectángulo usando el teorema de Pitágoras.
 Devuelve el valor de la hipotenusa.
 Llama a la función con los valores a = 5 y b = 12, e imprime el resultado.*/


func hipotenusa (a: Double, b: Double) -> Double {
    var hipotenusa = sqrt(a * a + b * b)
    return hipotenusa
}

let resultadoH = hipotenusa(a: 5, b: 4)
print(resultadoH)

//Se podía simplficar
func hipotenusaS(a: Double, b: Double) -> Double {
    return sqrt(a * a + b * b)
}

let resultadoH1 = hipotenusaS(a: 5, b: 4)
print(resultadoH1)

/**Ejercicio Opcional 6: Función para invertir cadenas
 Crea una función llamada invertirCadena que acepte una cadena como parámetro.
 La función debe devolver la cadena invertida.
 Llama a la función con la cadena "Hola Mundo" y muestra el resultado.*/

func invertirCadena(cadena:String) -> String {
    return String(cadena.reversed())
}

let resultadoCadenaInvertida = invertirCadena(cadena: "Hola Mundo")
