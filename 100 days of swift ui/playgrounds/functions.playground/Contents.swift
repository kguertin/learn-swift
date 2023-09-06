import UIKit

func printTimesTables (number: Int, end: Int) {
    for i in 1...end {
        print("\(i) * \(number) is \(i * number)")
    }
}

printTimesTables(number: 1, end: 12)
printTimesTables(number: 2, end: 12)
printTimesTables(number: 5, end: 20)

let root = sqrt(169)
print(root)

func areLettersIdentical (string1: String, string2: String ) -> Bool {
    string1.sorted() == string2.sorted()
}

areLettersIdentical(string1: "ABC", string2: "CBA")

func pythagoras(a: Double, b: Double) -> Double {
    sqrt(a * a + b * b)
}

let c = pythagoras(a: 3, b: 4)
print (c)

// Returning Multiple Values - Tuples
func getUser() -> (firstName: String, lastName: String) {
    ("Taylor", "Swift")
}

let user = getUser()
print("Name: \(user.firstName) \(user.lastName)")

func getUser2() -> (String, String) {
    ("Marc", "Gasol")
}

let user2 = getUser2()
print("Name: \(user2.0) \(user2.1)")

let (firstName, lastName) = getUser()
print("Name: \(firstName) \(lastName)")

// Customize parameter labels
let lyric = "I see a red door and I want it painted black"
print(lyric.hasPrefix("I see"))

func isUppercase(_ string: String) -> Bool {
    string == string.uppercased()
}

let string = "HELLO, WORLD"
let result = isUppercase(string)

func printTimesTable(for number: Int) {
    for i in 1...12 {
        print("\(i) x \(number) is \(i * number)")
    }
}

printTimesTable(for: 5)
