/*
Structures allow you to create your own data types

struct Name {
    Properties
}
*/

struct Dog {
    var age: Int
    var isGood: Bool
}

// If you define the `struct` without any default values then you MUST provide values when you instantiate the struct
var fido = Dog(age: 3, isGood: true)


// Struct with default values
struct Cat {
    var age: Int = 1
    var livesLeft: Int = 9
}

// Create an instance of Cat() with the default values
var sabrina = Cat()  // sabrina.age = 1 and sabrina.livesLeft = 9
