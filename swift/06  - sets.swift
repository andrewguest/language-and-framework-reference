// Set syntax (create an empty set):
//  var setName = Set<Type>()

// NOTE: In Sets, order is NOT preserved. You may not get the values back
//  in the same order that you inserted them.


// Creat a set with an initial value
var stateNames: Set = ["California", "New York", "Utah", "New Mexico"]


// Create an empty set of Strings
var instructions = Set<String>()


// Get the `count` of items in the Set
print(stateNames.count)  // prints: 4


// Check if the set is emtpy
print(stateNames.isEmpty)  // prints: false


// Check if a Set contains a value
print(stateNames.contains("New York"))  // prints: true


// Insert an element into the Set
stateNames.insert("Kansas")
print(stateNames)  // stateNames now contains: California, New York, Utah, New Mexico, Kansas


// Remove an element from the Set
stateNames.remove("Utah")  // stateNames now contains: California, New York, New Mexico, Kansas


// Remove ALL elements from a Set
stateNames.removeAll()  // stateNames is now empty


// Find the intersection of two Sets (find the shared values between two Sets)
var s1: Set = ["Apple", "Orange", "Banana"]
var s2: Set = ["Blueberry", "Banana", "Orange", "Stawberry"]
var s3 = s1.intersection(s2)  // s3 = ["Banana", "Orange"]


// Combine two Sets by using `union`
var book1: Set = ["Pig 1", "Pig 2", "Pig 3", "Wolf"]
var book2: Set = ["Little Red Riding Hood", "Grandma", "Wolf"]
var fairyTales = book1.union(book2)  // ["Pig 1", "Pig 2", "Pig 3", "Wolf", "Little Red Riding Hood", "Grandma", "Wolf"]


// Chaining `union` operators
var book1: Set = ["Pig 1", "Pig 2", "Pig 3", "Wolf"]
var book2: Set = ["Little Red Riding Hood", "Grandma", "Wolf"]
var book3: Set = ["Jack", "Blunderbore", "Beanstock"]
var fairyTales = book1.union(book2).union(book3)
// ["Pig 1", "Pig 2", "Pig 3", "Wolf", "Little Red Riding Hood", "Grandma", "Wolf", "Jack", "Blunderbore", "Beanstock"]


// Find elements in one set or the other, but not both
var nintendoSwitch: Set = ["Animal Crossing", "DOOM Eternal", "Stardew Valley"]
var playStation4: Set = ["DOOM Eternal", "Stardew Valley", "The Last of Us"]
var exclusiveGames = nintendoSwitch.symmetricDifference(playStation4)
// ["Animal Crossing", "The Last of Us"]


// Remove all items in one set from another set
var animals: Set = ["Bison", "Mountain Gorilla", "Hedgehog", "Sea Turtle", "Vaquita", "Ocelot"]
var notEndangered: Set = ["Bison", "Hedgehog", "Ocelot"]
var endangered = animals.subtracting(notEndangered)
// ["Mountain Gorilla", "Sea Turtle", "Vaquita"]
