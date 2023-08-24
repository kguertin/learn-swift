import UIKit

var beatles = ["John", "Paul", "George", "Ringo"]
let numbers = [4, 8, 15, 16, 23, 42]
var temperatures = [25.3, 28.2, 26.4]

print(beatles[0])
beatles.append("Kevin")
beatles.append("Bob")

var scores = Array<Int>()
scores.append(100)
scores.append(80)
scores.append(85)
print(scores[1])

var albums = [String]()
albums.append("Folklore")
albums.append("Fearless")
albums.append("Red")

var characters = ["Lana", "Pam", "Ray", "Sterling"]
print(characters.count)
characters.remove(at: 2)
print(characters.count)
characters.removeAll()
print(characters.count)

let bondMovies = ["Casino Royale", "spectre", "No Time to Die"]
print(bondMovies.contains("Frozen"))

let cities = ["London", "Tokyo", "Rome", "Budapest"]
print(cities.sorted())

let presidents = ["Bush", "Obama", "Trump", "Biden"]
let reversedPresidents = presidents.reversed()
print(reversedPresidents)

// Dictionaries
let employee = ["name": "Taylor Swift", "job": "Singer", "location": "Nashville"]
print(employee["name", default: "Unknown"])
print(employee["job", default: "Unknown"])
print(employee["location", default: "Unknown"])

let hasGraducated = ["Eric": false, "Maeve": true, "Otis": false]
let olympics = [2012: "London", 2016: "Rio de Janeiro", 2021: "Tokyo"]
print(olympics[2012, default: "Unknown"])

var heights = [String: Int]()
heights["Yao Ming"] = 229
heights["Shaquille O'Neal"] = 216
heights["LeBron James"] = 206

var archEnimies = [String: String]()
archEnimies["Batman"] = "The Joker"
archEnimies["Superman"] = "Lex Luthor"
archEnimies["Batman"] = "Penguin"

// Sets
let actors = Set(["Denzel Washington", "Tom Cruise", "Nicolas Cage", "Samuel L Jackson"])
print(actors)

var otherActors = Set<String>()
otherActors.insert("Denzel Washington")
otherActors.insert("Tom Cruise")
otherActors.insert("Nicolas Cage")
otherActors.insert("Samuel L Jackson")
print(otherActors)
print(otherActors.contains("Tom Cruise"))


// Enums
// Shortcut to set enums, don't need case for each entry
enum Weekday {
    case monday, tuesday, wednesday, thursday, friday
}

var day = Weekday.monday
print(day)
day = .wednesday
print(day)
