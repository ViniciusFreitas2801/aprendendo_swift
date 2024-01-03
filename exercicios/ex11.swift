func calculaMedia(_ notas: [Double]) -> Double {
    var somaNotas = 0.0
    let quantidadeElementos = notas.count
    for nota in notas {
        somaNotas += nota
    }
    return somaNotas / Double(quantidadeElementos)
}

var notas = [8.9, 10, 9.5, 6.7, 8.5]
var mediaNotas = print(calculaMedia(notas))