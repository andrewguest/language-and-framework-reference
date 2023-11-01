/*
Dictionaries syntax

Dictionary literal syntax:
    var dictionaryName: [KeyType: ValueType] = [:]

Dictionary initializer syntax:
    var dictionaryName = [KeyType: ValueType]()

Dictionary with values syntax:
    var fruitStand: [String: Int] = ["Apples": 12, "Banana": 8]
*/


// Create an empty dictionary where the `key` and `value` are both Integers
var yearlyPopulation: [Int, Int] = [:]


// Create a dictionary with values
var movieYears: [String: Int] = ["Cruella": 2021, "The Godfather": 1972, "The Dark Knight": 2008]


// Add an item to a dictionary
movieYears["Fight Club"] = 1999
// ["Cruella": 2021, "The Godfather": 1972, "The Dark Knight": 2008, "Fight Club": 1999]


// Updating an existing item ("Antagonist")
var roles: [String: String] = ["Protagonist": "Good guy", "Antagonist": "Good guy"]  // wrong value for `Antagonist`
roles["Antagonist"] = "Bad guy"
// ["Protagonist": "Good guy", "Antagonist": "Bad guy"]


// Removing an element ("D")
var letters: [Character: Int] = ["A": 1, "B": 2, "C": 3, "D": 9]
letters["D"] = nil


// Remove ALL elements
letters.removeAll()  // []


// Assign the value of a given key to a variable
// Doing this will return an `Optional()` type because Swift isn't sure if the given key ("Fight Club") exists
//    so as a precaution it returns an Optional() value.
// You can unwrap this Optioonal() value into it's real value by adding an `!` at the end
var favoriteMovieYear = movieYears["Fight Club"]  // Optional(1999)

// unwrap the value
favoriteMovieYear = movieYears["Fight Club"]!  // 1999

// Use an `if-let` statement to get the value of a key and unwrap it
if let favoriteMovieYear = movieYears["Fight Club"] {
    print(favoriteMovieYear)
} else {
    print("This key does not exist.")
}
