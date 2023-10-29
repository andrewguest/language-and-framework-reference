// IF/ELSE IF/ELSE statement

var isLoggedIn: Bool = true

// if `isLoggedIn` == true then print "Welcome back!"
// else then print "Access denied"
if isLoggedIn {
    print("Welcome back!")
} else {
    print("Access denied")
}


// Define some constants since these don't change
let a: Int = 1
let b: Int = 2

if a > b {
    print("a is greater than b")
} else if a < b {
    print("a is less than b")
} else {
    print("a and b are equal")
}


// Ternary conditional operator
// The ternary operator (denoted by a ?) offers a shorter alternative to if/else statements.

var orderSuccessfullyPlaced: Bool = true

// <variable or condition to check> ? <what to do when TRUE> : <what to do when FALSE>
orderSuccessfullyPlaced ? print("Your order was successfully received.") : print("Something went wrong.")


// Switch statement

var city: String = "New York"

// `city` is the variable to check the value of
switch city {
    case "Rapa Nui":
        print("Moai 🗿")
    case "New York":
        print("Statue of Liberty 🗽")
    case "Rome":
        print("Colosseum 🏛")
    default:
        print("A famous landmark is the Eiffel Tower!")
}


// Switch statement interval matching
//  Matching a case statement within a range

var year: Int = 1943

switch year {
    case 1701...1800:
        print("18th century")
    case 1801...1900:
        print("19th century")
    case 1901...2000:
        print("20th century")
    case 2001...2100:
        print("21st century")
    default:
        print("You're a time traveler!")
}

print(year)  // prints: 20th century


// Switch statement compound cases
//  Cases with multiple values

var country: String = "India"

switch country {
    // if the value of `country` is either "USA", "Mexico", or "Canada" then this case matches
    case "USA", "Mexico", "Canada":
        print("\(country) is in North America")
    case "South Africa", "Nigeria", "Kenya":
        print("\(country) is in Africa.")
    case "Banglades", "China", "India":
        print("\(country) is in Asia.")
    default:
        print("This country is somewhere in the world!")
}


// Switch statement where clause
//  The `where` clause allows for additional pattern matching for a given expression.

var randomNumber: Int = Int.random(in: 0...10)  // pick a random number between 0 and 10

switch randomNumber {
    // define a variable (x) and create a `case` where x % 2 == 0
    case let x where x % 2 == 0:
        print("\(randomNumber) is even")
    case let x where x % 2 == 1:
        print("\(randomNumber) is odd")
    default:
        print("Invalid")
}
