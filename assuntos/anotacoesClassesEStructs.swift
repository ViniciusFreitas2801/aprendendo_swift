//DUVIDAS:
//1 - Init - Pra que serve?
//2 - .self - Quando se deve usar?
//3 - mutating - Pra que serve exatamente, e quando nao precisa
//ser usada?

//ANOTACOES:
//Boa pratica iniciar nome de classe ou struct com letra
//maiuscula.

//Aqui criaresmo uma classe para pessoa.
class Pessoa {
    //Propriedades/atributos
    var nome = "Vinicius"
    var sobrenome = "Freitas"
    var idade = 19

    //Metodos/funcoes
    func boasVindas() {
        print("Bem-vindo \(nome) \(sobrenome)!")
    }
}

print("Classe sem construtor:")
var pessoa = Pessoa()
print(pessoa.nome) //Vinicius
pessoa.boasVindas() //Bem-vindo Vinicius Freitas!
print(" ")

//Podemos também criar um construtor, 
//que funciona como um inicializador, 
//para conseguir inicializar as propriedades 
//de uma forma dinâmica.
//--------------------------------------------------------------------
//Resumindo, caso seja desejavel nao declarar o valor
//da variavel ao declarar a variavel, deveremos usar 
//o CONSTRUTOR.

class Pessoa2 {
  var nome: String
  var sobrenome: String
  var idade: Int

  init(nome: String, sobrenome: String, idade: Int) {
    self.nome = nome
    self.sobrenome = sobrenome
    self.idade = idade
  }

  func boasVindas() {
    print("Bem-vindo \(nome) \(sobrenome)!")
  }
}

print("Classe com construtor:")
var pessoa2 = Pessoa2.init(nome: "Vinicius", sobrenome: "Freitas", idade: 19)
print(pessoa2.nome) //Vinicius
pessoa2.boasVindas() //Bem-vindo Vinicius Freitas!
print(" ")

//Agora usando Struct:
struct Pessoa3 {
    var nome = "Vinicius"
    var sobrenome = "Freitas"
    var idade = 19

    func boasVindas() {
        print("Bem-vindo \(nome) \(sobrenome)")
    }
}

print("Struct sem construtor(inicializador):")
var pessoa3 = Pessoa3()
print(pessoa3.nome)
pessoa3.boasVindas()
print(" ")

//Struct usando construtor(inicializador)
struct Pessoa4 {
    var nome: String
    var sobrenome: String
    var idade: Int

    init(nome: String, sobrenome: String, idade: Int) {
        self.nome = nome
        self.sobrenome = sobrenome
        self.idade = idade
    }

    func boasVindas() {
        print("Bem-vindo \(nome) \(sobrenome)!")
    }
}

print("Struct com construtor(inicializador):")
var pessoa4 = Pessoa4.init(nome: "Vinicius", sobrenome: "Freitas", idade: 19)
print(pessoa4.nome)
pessoa4.boasVindas()