// passed by reference
class Rectangle {
    // u can give default value with AnyType = x
    var width: Int 
    let height: Int

    var position: (Int, Int) = (50, 100)
    // computer property. only shows when asked for and must be a var bc it's likely to change
    var bottomRight: (Int, Int) {
        // must return value of (Type, Type)
        return(position.0 + width, position.1 + height)
    }

    // classes need initalizers
    init(w : Int, h: Int) {
        // any undefined values must go in here
        width = w
        height = h
    }

    // any func can mutate within a class
    func move(x: Int, y: Int) {
        // print("move to x: \(width + x), y: \(height + y)")
        position.0 += x
        position.1 += y
    }
}

// if there r no default values u have to define them like u would a func
var box = Rectangle(w: 10, h: 20)
box.move(x: 5, y: 15)
// u have to specify which internal value u want to access
print(box.width)

// print(box.bottomRight)
// // every layer must be mutable in order to do this !listen to the compiler
// box.width += 10
// // useful because it is computed as you go
// print(box.bottomRight)