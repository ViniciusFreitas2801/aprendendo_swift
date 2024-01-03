//Opcional pode conter algum valor ou ser nulo

var telefone: String?
print(telefone) //Retorna nulo

var celular: String?
celular = "99999"
print(celular) //Retorna o valor "Embrulhado"

var num_string = "922"
var numero = Int(num_string)
print(numero) //Retorna valor embrulhado

var nome = "Vinicius"
var nome_int = Int(nome)
print(nome_int) //Retorna nulo por nao ser possivel converter

var var_qualquer: String?
var_qualquer = "212"
print(var_qualquer!) //Forca o desembrulho (nao recomendado)

var var_qualquer2: String?
var_qualquer2 = "2222"

//Formas recomendadas:
if var_qualquer2 != nil {
    print(var_qualquer2!)
}

if let var_qualquer2_desembrulhada = var_qualquer2 {
    print(var_qualquer2_desembrulhada)
}

if let var_qualquer2 = var_qualquer2 {
    print(var_qualquer2)
}

var var_qualquer3: String?
var_qualquer3 = "222222221"

//Optional binding
if let var_qualquer2 = var_qualquer2, 
   let var_qualquer3 = var_qualquer3 {
    print(var_qualquer2)
    print(var_qualquer3)
}

//Recomendado para usar com funcoes
func autenticar(usuario: String?, senha: String?) {
    guard let usuario = usuario, let senha = senha
        else {
            return
        }
    print(usuario)
    print(senha)
}

autenticar(usuario: "Joaozinho", senha: "123")

//Optional changing (usado junto do optional binding)
var var_qualquer4: String?
var_qualquer4 = "12321"

if let primeiro_caracter = var_qualquer4?.first {
    print(primeiro_caracter) //Retorna o primeiro caracter da Str
} 

//Nil coalesing operator
var var_qualquer5: String?
var_qualquer5 = "1232222"

print(var_qualquer5 ?? "Nao possui valor para essa var")
//Se possuir valor exibe valor, se nao exibe mensagem

