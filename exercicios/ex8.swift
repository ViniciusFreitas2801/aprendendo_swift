func primo (num: Int) -> Bool {
    for i in 2..<num {
        if num % i == 0 {
            return true
        }
    }
    return false
}

print(primo(num: 6))
print(primo(num: 7))