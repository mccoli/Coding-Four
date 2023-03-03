func get_name() -> String {
    print("What is your name?")
    let name = readLine()
    return name!
}

func get_age() -> Int {
    print("How old are you?")
    if let years = readLine(), let age = Int(years) {
        let days = age * 365
        return days
    } else {
        print("That's not a number!")
        return 0
    }    
}

print(get_name(), "was born more than", get_age(), "days ago!")
