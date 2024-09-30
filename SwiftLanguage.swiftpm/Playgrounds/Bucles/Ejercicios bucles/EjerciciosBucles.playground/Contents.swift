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


/**Ejercicio 1: Contar hasta que se tire un 6
 Usa un bucle while para simular el lanzamiento de un dado de 6 caras.
 El bucle debe continuar hasta que se tire un 6, imprimiendo cada resultado.
 Cuando se obtenga un 6, imprime "¡Se tiró un 6!" y detén el bucle.*/

var dado = Int.random(in: 1...6)

while dado != 6 {
    dado = Int.random(in: 1...6)
    print("Sacaste un \(dado)")
}

print("Se tiro un 6!")

/**Ejercicio 2: Encontrar múltiplos de 3 y 5
 Crea un bucle que cuente de 1 a 100.
 Usa continue para omitir los números que no sean múltiplos de 3 o 5.
 Imprime los números que sí sean múltiplos de 3 o 5.*/

for i in 1...100{
    if i % 3 != 0 && i % 5 != 5 {
        continue
    }
    print(i)
}

/**Ejercicio 3: Juego de adivinanza con un número aleatorio
 Genera un número aleatorio entre 1 y 100.
 Usa un bucle while para simular el intento de adivinar ese número.
 Cada vez que se genera un número aleatorio, imprímelo.
 Detén el bucle con break si el número generado es igual al número a adivinar.*/

var numeroAcertar = Int.random(in: 1...100)
var numeroAleatorio = 0  // Inicializamos en 0 para entrar al bucle

// Bucle hasta que numeroAleatorio sea igual a numeroAcertar
while true {  // Hacemos que el bucle sea infinito con `true`
    numeroAleatorio = Int.random(in: 1...100)  // Generar un nuevo número en cada iteración
    print("Número generado: \(numeroAleatorio)")
    
    if numeroAleatorio == numeroAcertar {
        print("¡Acertó! El número era \(numeroAcertar)")
        break  // Salimos del bucle cuando acertamos
    }
}

/**Ejercicio 4: Filtrar archivos por extensión
 Crea un array con los siguientes nombres de archivos: ["image.png", "document.txt", "presentation.ppt", "photo.jpg", "notes.txt"].
 Usa un bucle for y continue para imprimir solo los archivos que tengan la extensión .txt.
 */

var archivos = ["image.png", "document.txt", "presentacion.ppt", "photo.jpg", "notes.txt"]


for archivo in archivos {
    if archivo.hasSuffix(".txt") == false{
        continue
    }
    print(archivo)
}
 /**Ejercicio 5: Encontrar los primeros 5 múltiplos de 7
  Crea un bucle for que cuente desde 1 hasta 1000.
  Usa break para detener el bucle después de encontrar los primeros 5 múltiplos de 7.
  Imprime los múltiplos de 7 que encuentres.*/

var contador = 0
for number in 1...1000 {
    if number.isMultiple(of: 5) && number.isMultiple(of: 7) {
        print(number)
        contador += 1
        
        if contador == 7 {
            break
        }
    }
}


