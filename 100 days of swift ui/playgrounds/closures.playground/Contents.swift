import UIKit

func greetUser() {
    print("Hi there!")
}

greetUser()
var greetCopy: () -> Void = greetUser
greetCopy()

// closure expression
let sayHello = { (name: String) -> String in
    "Hi \(name)!"
}

print(sayHello("Kevin"))

func getUserData(for id: Int) -> String {
    if id == 1989 {
        return "Taylor Swift"
    }
    return "Anonymous"
}

let userData: (Int) -> String = getUserData
print(userData(1989))

let team = ["Gloria", "Suzanne", "Piper", "Tiffany", "Tasha"]
let sortedTeam = team.sorted()
print(sortedTeam)

func captainFirstSorted(name1: String, name2: String ) -> Bool {
    if name1 == "Suzanne" {
        return true
    } else if name2 == "Suzanne" {
        return false
    }
    
    return name1 < name2
}

print(team.sorted(by: captainFirstSorted))

let captainFirstTeam = team.sorted(by: {(name1: String, name2: String) -> Bool in
    if name1 == "Suzanne" {
        return true
    } else if name2 == "Suzanne" {
        return false
    }
    
    return name1 < name2
})

print(captainFirstTeam)

// can also use shorthand for above code that has hard requirements for closures
let captainFirstTeamSorted = team.sorted {name1, name2 in
    if name1 == "Suzanne" {
        return true
    } else if name2 == "Suzanne" {
        return false
    }
    
    return name1 < name2
}

print(captainFirstTeamSorted)

let tOnly = team.filter { $0.hasPrefix("T") }
print(tOnly)

let uppercaseTeam = team.map { $0.uppercased() }
print(uppercaseTeam)
