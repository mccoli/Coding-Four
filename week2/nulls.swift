// optionals allow u to represent the absence of some kind of data....like schrodingers cat^^...the cat is some value or nothing at all

// if ur code compiles with a warning u can still run it
let a = "hello"
let b = "22"
let c = 3

// optional type of int b
let d: Int? = Int(b)

// u can check optional types do not equal to nil
if d != nil { 
    print("the value is \(d)")
} else {
    print("not a valid number")
}

// optional binding: unwrapping the value of d into e if d != nil (so its secretly e: Int)
if let e = d { 
    print("the value is \(e)")
    print(e + c)
}

let f: Int? = Int(b)
// ?? is the coalescing operator...if f has a value in its optional type assign it into g, if its nil, assign this default value (in this case 12)
let g: Int = f ?? 12
print(g)

// u can explicitly unwrap a value w no compiler check (not recommended)
let h: Int = f!
print(h)

//! doesnt work. guard statements execute if the condition is NOT met
let temp = 10
guard temp == c else {
    print("guard statement is false")
    throw
}
print("guard statement is true")