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