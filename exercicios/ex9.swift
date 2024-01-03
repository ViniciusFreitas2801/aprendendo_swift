func pessoa(nome: String?) {
    print(nome ?? "Nome nao inserido")   
}

pessoa(nome: nil)