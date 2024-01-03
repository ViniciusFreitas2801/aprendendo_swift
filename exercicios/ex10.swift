func pagamento(valor: Double, pessoas: Int) {
    var resultado: Double
    resultado = (valor + (valor * 0.10)) / Double(pessoas)
    print("Cada um vai pagar: \(resultado)")
}

pagamento(valor: 100, pessoas: 2)