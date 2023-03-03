// passed by value
// default to struct
struct Rectangle {
    // u can give default value with AnyType = x
    var width: Int 
    let height: Int

    var position: (Int, Int) = (50, 100)
    // computer property. only shows when asked for and must be a var bc it's likely to change
    var bottomRight: (Int, Int) {
        // must return value of (Type, Type)
        return(position.0 + width, position.1 + height)
    }

    // non mutating funcs cannot change properties inside the struct
    mutating func move(x: Int, y: Int) {
        // print("move to x: \(width + x), y: \(height + y)")
        position.0 += x
        position.1 += y
    }
}

// if there r no default values u have to define them like u would a func
var box = Rectangle(width: 10, height: 20)
box.move(x: 5, y: 15)
print(box)

print(box.bottomRight)
// every layer must be mutable in order to do this !listen to the compiler
box.width += 10
// useful because it is computed as you go
print(box.bottomRight)