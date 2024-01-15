class Retangulo {
    var base: Double
    var altura: Double

    func calcularArea() -> Double {
        return base * altura
    }

    func calcularPerimetro() -> Double {
        return base + base + altura + altura
    }

    init(base: Double, altura: Double) {
        self.base = base
        self.altura = altura
    }
}

var calculo = Retangulo(base: 2, altura: 5)
print(calculo.calcularArea())
print(calculo.calcularPerimetro())