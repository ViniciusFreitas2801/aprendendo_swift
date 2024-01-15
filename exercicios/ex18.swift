class Empregado {

    var nome: String
    var salario: Double
    var departamento: String

    init(nome: String, salario: Double, departamento: String) {

        self.nome = nome
        self.salario = salario
        self.departamento = departamento
    }
}

class Gerente: Empregado {

    init(nome: String, salario: Double) {

        super.init(nome: nome, salario: salario)
    }
}

class Vendedor: Empregado {
    
    func percentualComissao(_ numVendas: Int) -> Double {

        return (0.1 * 50.0 * Double(numVendas)) + self.salario
    }
}

func verificaTipo(_ empregado: Empregado) {

    if let gerente = empregado as? Gerente {

        print("O empregado \(gerente.nome) é gerente no departamento \(gerente.departamento)!")
    }

    else if let vendedor = empregado as? Vendedor {
        
        print("O empregado \(vendedor.nome) é vendedor no departamento \(vendedor.departamento)!")
    }

    else {

        print("O empregado \(empregado.nome) é de outro setor!")
    }
}

let vendedor = Vendedor(nome: "Daniel", salario: 2300.0)
let gerente = Gerente(nome: "Felipe", salario: 4000.0, departamento: "RH")
verificaTipo(vendedor)
verificaTipo(gerente)