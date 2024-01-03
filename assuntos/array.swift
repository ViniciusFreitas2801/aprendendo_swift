var notas = [1, 2, 3.2]
var notas2: [Double] = [2.2, 2.3, 9.1]
var array_vazio: [Int] = []
var array_vazio2 = Array<Int>()

notas.isEmpty //Verifica se o array ta vazio
notas.count //'' elementos dentro do array
notas.min() //'' menor valor dentro do array
notas.max() //'' maior valor ''
notas.contains(1) //'' se possui valor inserido no array
notas.firstIndex(of: 2) //Retorna o index do valor inserido
notas.append(10) //Adiciona valor inserido no array no ult index
notas.insert(8, at: 2) //'' definindo array que ele estara
notas.removeLast() //Remove valor do ultimo index
notas.removeFirst() //'' primeiro index
notas.remove(at: 2) //'' do index inserido

var remover = notas.removeLast()
print(remover) //Printa valor removido

for nota in notas {
    print(nota)
}

for i in 0..<notas.count {
    print(notas[i])   
}

for (index, elemento) in notas.enumerated() {
    print("[\(index)] \(elemento)")
}