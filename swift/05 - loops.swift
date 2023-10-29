// For-in loop
for num in 1...10 {
    print(num)
}


// stride() function
//  For number in the range of 0 to 6, but increase by 2 each time
for num in stride(from: 0, to: 6, by: 2) {
    prin(num)  // prints: 0 2 4
}


// continue keyword
//  `continue` allows you skip a value
let challenge: String = "bring it"

for char in challenge {
    switch char {
        // if `char` is a, e, i, o, or u then we `continue` the looping and do nothing with that `char` value
        case "a", "e", "i", "o", "u":
            continue
        default:
            print(char)
    }
}


// break keyword
//  `break` is used to exit a loop before the loop completes
let respect: Int = 556

for pageNum in 1...1000 {
    if pageNum == respect {
        print("Respect means: to admire someone for their abilities.")
        break
    }
    print("On page \(pageNum) and still no 'respect'!")
}


// While loop
var total: Int = 0

while total < 50 {
    let diceRoll = Int.random(in: 1...6)
    total += diceRoll
}

