// use let to make a constant value, safeguards against accidentally changing values
// u dont need to define datatypes in swift, compiler handles it
let first_num = 22
let second_num = 5.5

print(first_num + second_num) // ! this doesnt work with defined values, const or var

var third_num = 12
first_num += 1 // ! this doesnt work because it is a constant, it's immutable

third_num += 1 // this works because vars are mutable
print(third_num) 