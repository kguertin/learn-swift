import UIKit

let score = 85

if score > 80 {
    print("Great Job")
}

let speed = 88
let percentage = 85
let age = 18

if speed >= 88 {
    print("Where we're going, we don't need roads.")
}

if percentage < 85 {
    print("Sorry! You failed the test.")
}

if age >= 18 {
    print("You're eligible to vote.")
}

let ourName = "Dave Lister"
let friendName = "Arnold Rimmer"

// Check alphabetical order
if ourName < friendName {
    print("It's \(ourName) vs \(friendName)")
}

if ourName > friendName {
    print("It's \(friendName) vs \(ourName)")
}

var numbers = [1,2,3]

numbers.append(4)
if(numbers.count > 3) {
    numbers.remove(at: 0)
}

print(numbers)


let country = "Canada"

if country == "Australia" {
    print("G'day!")
}

let name = "Taylor Swift"

if name != "Anonymous" {
    print("Welcome \(name)")
}

var username = ""

if username.isEmpty {
    username = "Anonymous"
}

print ("Welcome, \(username)")

let userAge = 14
let hasParentalConsent = true

if age >= 18 || hasParentalConsent {
    print("You can buy the game!")
}

enum TrasportOption {
    case airplane, helicopter, bicycle, car, escooter
}

let transport = TrasportOption.helicopter

// Swift infers the type of var because it was assigned an enum value
if transport == .airplane || transport == .helicopter {
    print("Let's fly!")
} else if transport == .bicycle {
    print("I hope there's a bike path...")
} else if transport == .car {
    print("Time to get stuck in traffic.")
} else {
    print("I'm going to hire a scooter now")
}

let place = "Metropolis"

switch place {
case "Gotham":
    print("You're Batman")
case "Mego-City One":
    print("You're Judge Dredd")
case "Wakanda":
    print("You're Black Panther")
default:
    print("Who are you?")
}

let hour = 23
print(hour < 12 ? "It's before noon" : "it's after noon")

let names = ["Jayne", "Kaylee", "mal"]
let crewCount = names.isEmpty ? "No one" : "\(names.count) people"
print(crewCount)

enum Theme {
    case light, dark
}
let theme = Theme.dark

let background = theme == .dark ? "black" : "white"
print(background)

// Loops
for i in 1...12 {
    print("5 x \(i) is \(5 * i)")
}

//creates a range
for i in 1...12 {
    print("The \(i) times table")
    for j in 1...12 {
        print("\(j) x \(i) is \(j * i)")
    }
    print()
}

for i in 1...5 {
    print("counting from 1 through 5: \(i)")
}

// Range excluding last number
for i in 1..<5 {
    print("counting from 1 up to 5: \(i)")
}

var lyric = "Haters gonna"

for _ in 1...5 {
    lyric += " hate"
}
print(lyric)

var countdown = 10
while countdown > 0 {
print("\(countdown)...")
    countdown -= 1
}
print("Blast off!")

let id = Int.random(in: 1...1000)
let ammount = Double.random(in: 0...1)

var roll = 0
while roll != 20 {
    roll = Int.random(in: 1...20)
    print("I rolled a \(roll)")
}
print("Critical Hit!")
