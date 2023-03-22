struct Recipe {
	// List of ingredients as a dictionary with the key being the
	// ingredient name, and the value being a tuple of the amount
	// and unit of the ingredient
	let ingredients: [String: (Double, String)]
	// List of instructions as an array of strings
	let instructions: [String]
	let servingSize: Int
	let prepTimeMinutes: Int
	var prepTimeHours: Double {
		return Double(prepTimeMinutes) / 60.0
	}

	// Private property to keep track of which step the getStep()
	// method is currently on
	var getStepCalled = 0

	// Method to convert imperial units to metric units (only does oz to g)
	func imperialToMetric(name: String) -> String {
		// Since ingredients is a dictionary, accessing value via []
		// will give us an optional, "if let" here help us check that
		if let ingredient = ingredients[name] {
			return String(ingredient.0 * 28.34952)
		} else {
			return "Cannot convert. No ingredient called '\(name)' found!"
		}
	}

	// Method to get individual instruction step one at a time
	mutating func getStep() -> String {
		// Check to make sure we are not trying to index past the
		// length of the instructions array
		if getStepCalled < instructions.count {
			let step = instructions[getStepCalled]
			getStepCalled += 1
			return step
		} else {
			return "End of recipe!"
		}
	}
}

// The "User" struct goes here:
// * A "User" struct with username, first name, last name, computed full name, and list of favourited recipes properties
// * One method "addFavourite" under "User" that adds an additional Recipe object to the user object's favourited recipes list
// * Create three recipe objects out of the Recipe struct, and using the "addFavourite" method above, add two of the recipes to the created user object

struct User {
	let username: String
	let firstname: String
	let lastname: String

	// gets full name by adding firstname and lastname properties together
	var fullname: String {
		firstname + " " + lastname
	}

	// fav recipes as an array of structs
	var favourites: [Recipe] = []

	mutating func addFavourite(newFavourite: Recipe) {
		favourites.append(recipe1)
		favourites.append(recipe2)
	}
}


// You can remove all of the following for the test
var recipe = Recipe(
	ingredients: [
		"Plain flour": (4.75, "oz"),
		"Baking powder": (1, "tsp"),
		"Salt": (0.5, "tsp"),
		"Caster sugar": (2, "tbsp"),
		"Milk": (130, "ml"),
		"Egg, lightly beaten": (1, ""),
		"Melted butter": (2, "tbsp")
	],
	instructions: [
		"Sift the flour, baking powder, salt and caster sugar into a large bowl. In a separate bowl or jug, lightly whisk together the milk and egg, then whisk in the melted butter.",
		"Pour the milk mixture into the flour mixture and, using a fork, beat until you have a smooth batter. Any lumps will soon disappear with a little mixing. Let the batter stand for a few minutes.",
		"Heat a non-stick frying pan over a medium heat and add a knob of butter. When it's melted, add a ladle of batter (or two if your frying pan is big enough to cook two pancakes at the same time). It will seem very thick but this is how it should be.",
		"Wait for about 3 minutes until the top of the pancake begins to bubble, and the edges begin to set. Flip it over and cook for another two minutes until both sides are golden brown and the pancake has risen to about 1cm/½in thick. If the pancake is too dark, reduce the heat slightly for the next round.",
		"Repeat until all the batter is used up. You can keep the pancakes warm in a low oven, but they taste best fresh out the pan.",
		"Serve with lashings of real maple syrup and extra butter, if you like."
	],
	servingSize: 4,
	prepTimeMinutes: 40
)

var recipe1 = Recipe(
	ingredients: [
		"A slice of Bread": (1, ""),
		"Honey": (1, "tsp"),
		"Butter": (1, "tbsp"),
		"Flaky salt": (0.5, "tsp")
	],
	instructions: [
		"Heat the butter in a pan over medium heat until it starts to brown.",
		"Place the bread in the pan until it soaks up the browned butter and starts to toast, about 1 minute.",
		"Remove the bread from the pan and spread the honey on it.",
		"Sprinkle with flaky salt to taste."
	],
	servingSize: 1,
	prepTimeMinutes: 10
)

var recipe2 = Recipe(
	ingredients: [
		"Cornflakes": (1, "bowl"),
		"Milk": (300, "ml")
	],
	instructions: [
		"Put the cornflakes in the bowl.",
		"Pour the milk over them.",
		"Some people add sugar, put it in the microwave, or enjoy it as is!"
	],
	servingSize: 1,
	prepTimeMinutes: 5
)

var user = User(username: "olimcc", firstname: "olivia", lastname: "mccallum")
print(user.fullname)
user.addFavourite(newFavourite: recipe)
print(user.favourites)

print(recipe.imperialToMetric(name: "flour"))
print(recipe.imperialToMetric(name: "Plain flour"))
print(recipe.getStep()) // print first step of instructions
print(recipe.getStep()) // print second step of instructions