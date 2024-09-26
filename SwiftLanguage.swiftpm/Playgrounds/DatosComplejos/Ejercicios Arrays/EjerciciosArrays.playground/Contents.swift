import UIKit

/**Ejercicio 1: Creación y Manipulación de Arrays
 Crea un array vacío llamado favoriteFoods que contenga elementos de tipo String.
 Usa append() para agregar tres alimentos que te gusten a favoriteFoods.
 Imprime el número de elementos en el array usando .count.
 Elimina el segundo alimento de la lista y vuelve a imprimir el número de elementos.
 Verifica si la lista contiene "Pizza" utilizando contains(). Imprime el resultado (true/false).*/

var favoriteFoods = [String]()

favoriteFoods.append("Pizza")
favoriteFoods.append("Pasta Boloñesa")
favoriteFoods.append("Percebes")

print(favoriteFoods.count)
favoriteFoods.remove(at: 1)
print(favoriteFoods)

print(favoriteFoods.contains("Pizza"))

/**Ejercicio 2: Lectura y Modificación de Arrays
 Crea un array llamado weekDays que contenga los días de la semana, comenzando por "Lunes" hasta "Domingo".
 Imprime el tercer día de la semana.
 Cambia el último día a "Funday" y vuelve a imprimir todo el array.
 Ordena los días de la semana alfabéticamente usando sorted() e imprime el array ordenado.*/

var weekDays = ["Lunes", "Martes", "Miércoles", "Jueves", "Viernes", "Sábado", "Domingo"]
print(weekDays[2])
weekDays[6] = "Funday"
print(weekDays)

print(weekDays.sorted())

/**Ejercicio 3: Operaciones Combinadas en Arrays
 Crea un array llamado numbers con los siguientes elementos: [5, 10, 15, 20, 25].
 Usa append() para agregar el número 30 al array.
 Usa remove(at:) para eliminar el número que está en la segunda posición.
 Imprime el array y verifica si contiene el número 20 usando contains().
 Finalmente, imprime los números en orden inverso usando reversed().*/

var numbers = [5, 10, 15, 20, 25]
numbers.append(30)
numbers.remove(at: 1)
print(numbers)
print(numbers.contains(20))
print(numbers.reversed())

/**Ejercicio 4: Arrays Vacíos y Tipado
 Crea un array vacío llamado studentGrades de tipo Double.
 Usa append() para agregar tres notas (por ejemplo, 8.5, 9.0, 7.3).
 Calcula e imprime la media de las notas sumándolas y dividiéndolas por la cantidad de elementos.
 Elimina todas las notas usando removeAll() y verifica si el array está vacío usando .isEmpty.
*/

var studentGrades = [Double]()
studentGrades.append(8.5)
studentGrades.append(9.0)
studentGrades.append(7.3)

var media = (studentGrades[0] + studentGrades [1] + studentGrades[2])/3
print(media)
studentGrades.removeAll()
print(studentGrades.isEmpty)

/**Ejercicio Opcional: Desafío con Arrays
 Crea un array llamado names con los siguientes nombres: ["Anna", "Ben", "Charlie", "David"].
 Ordena los nombres alfabéticamente e imprime el resultado.
 Verifica si el array contiene el nombre "Eva" utilizando contains().
 Si "Eva" no está en el array, agrégala al final usando append().
 Vuelve a ordenar el array y, finalmente, imprime todos los nombres en orden inverso.*/

var names = ["Anna", "Ben", "Charlie", "David"]
print(names.sorted())

if names.contains("Eva"){
    print("Contiene a Eva")
}else{
    names.append("Eva")
}

var namesOrdenados = names.sorted()

print(Array(namesOrdenados.reversed())) //reversed() devuelve una secuencia invertida, por lo que para imprimirla como un array necesitas envolverla con Array()
