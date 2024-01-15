class Empregado {

    var nome: String
    var salario: Double

    init(nome: String, salario: Double) {

        self.nome = nome
        self.salario = salario
    }
}

class Gerente: Empregado {

    var departamento: String

    init(nome: String, salario: Double, departamento: String) {

        self.departamento = departamento
        super.init(nome: nome, salario: salario)
    }
}

class Vendedor: Empregado {

    func percentualComissao(_ numVendas: Int) -> Double {

        return (0.1 * 50.0 * Double(numeroVendas)) + self.salario
    }
}