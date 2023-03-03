struct PancakeRecipe {
    var serving_size: Int = 1

    let milk: Int = 200
    let flour: Int = 200
    let egg: Int = 1
    let butter: Int = 5

    let instructions: [Int: String] = [1: "Mix the wet ingredients together.", 2: "Gradually add the wet ingredients to the flour.", 3: "Heat some butter in the pan.", 4: "Pour the pancake batter in the pan and wait 30 seconds. Then flip and repeat." 5: "Enjoy your tasty pancakes ^^"]

    mutating func change_serving(serving_size: Int) {
        for (key, value) in ingredients {
            value += value * serving_size
        }
    }
}