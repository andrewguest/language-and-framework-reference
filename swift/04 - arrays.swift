// Array
//  Initialize an empty array
//  var name = [Type]()


// Define an array of integers
var scores: [Int] = [Int]()

// Define an array of strings
var characters: [String] = [String]()


// Create an array with a list of values
var location: [Double] = [12.34, 65.33]


// Array indices
var vowels: [String] = ["a", "e", "i", "o", "u"]
print(vowels[3])  // prints: o
print(vowels[0])  // prints: a


// Array .count (length)
var countingRhyme: [String] = ["eeny", "meeny", "miny", "moe", "catch", "a", "coder", "by", "the", "toe", "if", "they", "debug", "let", "them", "go", "eeny", "meeny", "miny", "moe"]
print(countingRhyme.count)  // prints: 20


// Array .append (add to a list)
var gymBadges: [String] = ["Boulder", "Cascade"]
gymBadges.append("Thunder")
print(gymBadges)  // prints: ["Boulder", "Cascade", "Thunder"]


// Array insert() and .remove()
var students: [String] = ["Alice", "Zoey", "Chase"]

// insert an entry at a specific place in the array
students.insert("Beth", at: 0)  // Add "Beth" at the beginning of the array

// remotes the value at the specified index
students.remove(at: 3)  // Remove the last item in the array

print(students)  // prints: ["Beth", "Alice", "Zoey"]


// Loop over an array
for student in students {
    print(student)
}
