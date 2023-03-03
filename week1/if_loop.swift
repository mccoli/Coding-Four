// IF STATEMENTS
let first_num = 12
let second_num = 0
let third_num = 12

print("hello")

if first_num == second_num {
    print("1st and 2nd nums r the same")
} else if first_num != second_num {
    print("1st and 2nd nums r not the same")
}

if first_num == third_num {
    print("1st and 3rd nums r the same")
} else {
    print("different")
}

// LOOPS
// prints each char
for c in "hello there" {
    print(c)
}

var count = 0
while count < 10 {
    count += 1
    print(count)
}