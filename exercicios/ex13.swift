struct Calculadora {
    let n1: Int
    let n2: Int

    func adicao() -> Int {
        return n1 + n2
    }

    func subtracao() -> Int {
        return n1 - n2
    }

    func multiplicacao() -> Int {
        return n1 * n2
    }

    func divisao() -> Int {
        return n1 / n2
    }
}

let calculadora = Calculadora(n1: 5, n2: 3)
print("Soma:",calculadora.adicao())
print("Subtracao:",calculadora.subtracao())
print("Multiplicacao:",calculadora.multiplicacao())
print("Divisao:",calculadora.divisao())