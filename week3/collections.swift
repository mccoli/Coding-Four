// ARRAYS
// rmb that lets are constant and immutable, vars are variable and mutable
// u cannot mix types within an array
// var arr: [Type] = [1, 2, 3, 4] is what it rly is but isnt necessary to code this way
var arr = [1, 2, 3, 4]
arr.append(2)
print(arr[3])

// u can concatenate arrays together
let a = [1, 2, 3, 4]
let b = [5, 6, 7, 8]
let c = a + b 
print(c)

for number in c {
    print(number)
}

// DICTIONARIES
// [Type: Value]
// order of items is not fixed
let d: [String: Int] = ["first": 1, "second": 2, "third": 3]
// u have to manually do optional unwrapping to check for nils with dicts, the below will still compile successfully
print(d["fourth"])

// (tuple of key, value)
for (key, value) in d {
    print(key)
    print(value)
}

// ENUMERATIONS
// cases are the only possible values
enum Planets {
    case Earth
    case Venus
    case Mars
    case Jupiter
}

print(Planets.Earth)
// print(.Earth) // this sometimes works also
