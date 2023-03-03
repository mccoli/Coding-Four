func convert() -> String {
    print("Give me a decimal value")
    if let value = readLine(), let double = Double(value) {
        let percentage = Int(double * 100)
        return "\(percentage)%"
    } else {
        return "error"
    }
}

print(convert())