// non void functions have to specify their return type
// parameters must be defined in order 2 compile
// things to define: 1. argument label 2. parameter name 3. the type
func sum(first a: Int, second b: Int) -> String {
    let result = a + b
    return "the sum is \(result) using the official way of writing functions"
}

// must say which params correspond with which value
print(sum(first: 10, second: 5))

// "shortcut" ways of writing functions
func parameter_name_only(a: Int, b: Int) -> String {
    let result = a + b
    return "the sum is \(result) using the parameter names only of a and b"
}
print(parameter_name_only(a: 10, b: 5))

func no_argument_label(_ a: Int, _ b: Int) -> String {
    let result = a + b
    return "the sum is \(result) without argument lables, giving only the values as parameters when calling the function"
}
print(no_argument_label(10, 5))