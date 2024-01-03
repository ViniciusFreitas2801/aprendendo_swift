var coordenadas = (5, 2.0)
coordenadas.0
coordenadas.1

var coordenadas2: (Int, Double) = (2, 10.5)
coordenadas2.0
coordenadas2.1

var coordenadas3: (x: Int, y: Double) = (10, 15.2)
coordenadas3.x
coordenadas3.y

typealias Coordenadas4 = (x: Int, y: Double)

var coordenadas4: (Coordenadas4) = (20, 5.2)
coordenadas4.x
coordenadas4.y

var pessoa = (nome: "Vinicius", idade: 19)
pessoa.idade
pessoa.nome

var (nome, idade) = pessoa
print(nome)
print(idade)

var (_, idade) = pessoa
print(idade)