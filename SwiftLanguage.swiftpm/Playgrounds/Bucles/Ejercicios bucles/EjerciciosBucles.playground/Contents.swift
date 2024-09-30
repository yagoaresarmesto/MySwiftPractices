import UIKit

/**Ejercicio 1: Imprimir números
Imprime los números del 1 al 10 usando un bucle for.
Luego, imprime los números del 10 al 1, en orden descendente.*/

var numero = 11
for _ in 1...10 {
    numero -= 1
    print(numero)
}

//Otra forma
for i in stride(from: 10, to: 0, by: -1) {
    print(i)
}

/**Ejercicio 2: Suma de números
 Crea un rango de números del 1 al 100.
 Usa un bucle for para sumar todos los números y almacena el resultado en una variable.
 Imprime el total.*/

var suma = 0

for i in 1...100 {
    suma += i
}

print("La suma total de los numeros del 1 al 100 es: \(suma)")

/**Ejercicio 3: Multiplicar elementos de un array
 Crea un array de números [2, 4, 6, 8, 10].
 Usa un bucle for para multiplicar cada número por 3 e imprime el resultado de cada multiplicación.*/

var numeros = [2, 4, 6, 8, 10]
var resultado = 0
for numero in numeros {
    resultado = numero * 3
    print("Resultado: \(resultado)")
}

/**Ejercicio 4: Conteo de vocales
 Crea una variable con una cadena de texto que contenga una oración.
 Usa un bucle for para contar cuántas vocales (a, e, i, o, u) hay en la cadena.
 Imprime el número total de vocales encontradas.*/

var cadena = "Hola me llamo Yago"
var contadorVocales = 0


for letra in cadena {
    //print(letra) H -> o -> l ...
    if "aeiou".contains(letra.lowercased()){
        contadorVocales += 1
    }
}
print(contadorVocales)

/**Ejercicio 5: Tabla de multiplicar
 Imprime la tabla de multiplicar del número 7 (del 1 al 10) usando un bucle for.*/

var numero1 = 7
var resultado1 = 0
for i in 1...10 {
    resultado1 = numero1 * i
    print("\(numero1) * \(i) es: \(resultado1)")
}
 /**Ejercicio 6 (Opcional): Números pares e impares
  Crea un rango de números del 1 al 20.
  Usa un bucle for para imprimir si cada número es par o impar.
  */

for number in 1...20{
    let parImpar = number % 2 == 0 ? "\(number) es par" : "\(number) es impar"
    print(parImpar)
}
