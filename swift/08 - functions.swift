/*

func functionName(<parameters>) -> <return type> {
    <function code>
}

*/


func multiply(x: Int, y: Int) -> Int {
    return x * y
}



// Argument labels
func functionName(argumentLabel parameterName: type) {
    print(parameterName)
}
// functionName(argumentLabel: value)


// Omitting argument labels
// When the _ is specified ahead of a parameter in the definition, only the argument value
//      needs to be specified in the function call
func funcName(_ paramName: paramType) -> returnType {
    // function body
}

// You can call this function with:
funcName(100)  // You don't need to do: funcName(paramName: 100) because of the _



// You can mix omitted argument labels with argument labels:
func winner(_ firstPoints: Int, secondPoints: int) -> String {
    if firstPoints > secondPoints {
        return "Team 1 wins!"
    } else {
        return "Team 2 wins!"
    }
}

// Call the function this way:
winner(10, secondPoints: 20)
// 10 doesn't need a label (which would be firstPoints) due to the _ in the function definition
// You still need an argument label with secondPoints because it doesn't have a _



// Returning multiple values
func favoriteBook() -> (name: String, author: String, yearPublished: Int) {
    retrun ("Harry Potter and the Philosopher's Stone", "J.K. Rowling", 1997)
}

let book = favoriteBook()
print(book)  // prints: (name: "Harry Potter and the Philosopher\'s Stone", author: "J.K. Rowling", yearPublished: 1997)
print(book.name)  // prints: Harry Potter and the Philosopher's Stone
print(book.author)  // prints: J.K. Rowling



// Default parameters
func totalWithTip(total: Double, tip: Double = 0.2) -> Double {
    return total + (total * tip)
}



// Variadic parameters
// A variadic parameter is a parameter that accepts zero or more values of a certain type.

// `numbers` is a variadic parameter that accepts 0 or more values and is interpreted as an Array within the function.
func averageExchangeRate(numbers: Double...) -> Double {
    var total: Double = 0
    let numValues = Double(numbers.count)

    for number in numbers {
        total += number
    }

    return total / numValues
}

print(averageExchangeRate(numbers: 0.81380, 0.77268, 0.77453, 0.75466, 0.75729, 0.78241))  // prints: 0.7758949999999999
