//Obs: Heranca so esta presente em classes, struct nao possui
//Classe pai: ContaBancaria
//Classes filhas: ContaPoupanca, ContaCorrente

class ContaBancaria {
    var saldo: Double = 0.0
    var nome: String

    func sacar(_ valor: Double) {
        saldo -= valor
    }

    func depositar(_ valor: Double) {
        saldo += valor
    }   

    init(nome: String) {
        self.nome = nome
    }
}

class ContaPoupanca: ContaBancaria {
    func solicitarEmprestimo(_ valor: Double) {
        print("Emprestimo solitado de R$\(valor)")
        super.depositar(200)
    }

    override func sacar(_ valor: Double) {
        saldo = saldo - (valor + 10)
    }
}

var contaPoupanca = ContaPoupanca(nome: "Vinicius")
contaPoupanca.depositar(100)
print("Saldo conta poupanca R$\(contaPoupanca.saldo)")

class ContaCorrente: ContaBancaria {
    var possuiCartao: Bool

    func solicitarCartao() {
        possuiCartao = true
        print("Cartao solicitado com sucesso!")
    }

    init(nome: String, possuiCartao: Bool) {
        self.possuiCartao = possuiCartao
        super.init(nome: nome)
    }

    override func sacar(_ valor: Double) {
        saldo = saldo - (valor + 5)
    }
}

var contaCorrente = ContaCorrente(nome: "Sofia", possuiCartao: false)
contaCorrente.depositar(800)
print("Saldo conta corrente R$\(contaCorrente.saldo)")

contaCorrente.solicitarCartao()
contaPoupanca.solicitarEmprestimo(5000)
print("Saldo conta poupanca R$\(contaPoupanca.saldo)")

func exibeSaldo(_ conta: ContaBancaria) {
    if conta is ContaCorrente {
        print("Conta é do tipo corrente!")
    }

    if let contaPoupanca = conta as? ContaPoupanca {
        contaPoupanca.solicitarEmprestimo(500)
    }

    guard let contaCorrente = conta as? ContaCorrente else {
        return }
    print(contaCorrente.possuiCartao)
}

exibeSaldo(contaCorrente)
exibeSaldo(contaPoupanca)