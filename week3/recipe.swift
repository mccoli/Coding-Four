struct PancakeRecipe {
    var serving_size: Int = 1

    // ingredients dictionary
    var ingredients: [String: Double] = ["milk": 400, "flour": 400, "egg": 1, "butter": 50, "lemon": 20, "sugar": 30]

    // instructions dictionary
    let instructions: [Int: String] = [1: "Mix the wet ingredients together.", 2: "Gradually add the wet ingredients to the flour.", 3: "Heat some butter in the pan.", 4: "Pour the pancake batter in the pan and wait 30 seconds. Then flip and repeat.", 5: "Enjoy your tasty pancakes! Serve with lemon and sugar ^.^"]

    // !trying to change values in ingredients dict by multiplying by a serving size
    mutating func change_serving() {
        print("How many servings would you like?")
        if let serving_size = readLine(), let s = Int(serving_size) {
            for (key, value) in ingredients {
                let new_value = Int(value) * s
                ingredients[key] = Double(new_value)
            }
        }
    }

    mutating func convert(_ d: [String: Double]) {
        print("Do you use metric or imperial units?")
        // get user input and default to metric if there is a nil value
        let units: String = readLine() ?? "metric"
        // if they say imperial do a conversion on the values in the dict
        if units == "imperial" {
            for (key, value) in ingredients {
                // because whole eggs don't need units
                if key != "egg" {
                    // converting to imperial with two decimal places and replacing the old value in the dict
                    let new_value = ((value * 0.035) * 100).rounded() / 100
                    ingredients[key] = new_value
                }              
            }
        }
    }

    // when the iteration number matches up with the step number it prints the corresponding instruction
    func give_instructions(_ d: [Int: String]) {
        var count: Int = 1
        // ! error: finding matches but not continuing to iterate
        for (key, value) in instructions {
            // ! dictionaries r unordered in swift....theres a randomness element to
            if count == key {
                print("step \(count). \(value)")
                count += 1
            }       
        }
    }
}

// create pancake object
var pancake = PancakeRecipe()

print("Hi! Welcome to Pancake Simulator. First I'll need some details so I can generate a recipe for you.")

// changes pancake ingredients by serving size and imperial/metric units
// print(pancake.change_serving())
// print(pancake.convert(pancake.ingredients))
// print(pancake.ingredients)

// printing instructions one by one
print(pancake.give_instructions(pancake.instructions))
//print(pancake.give_instructions(pancake.instructions))
// print(pancake.give_instructions(pancake.instructions))
// print(pancake.give_instructions(pancake.instructions))
// print(pancake.give_instructions(pancake.instructions))