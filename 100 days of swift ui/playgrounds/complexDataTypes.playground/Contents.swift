import UIKit

// Simple Struct
struct Album {
    let title: String
    let artist: String
    let year: Int
    
    func printSummary() {
        print("\(title) (\(year)) by \(artist)")
    }
}

let red = Album(title: "Red", artist: "Taylor Swift", year: 2012)
let wings = Album(title: "Wings", artist: "BTS", year: 2016)

red.printSummary()
wings.printSummary()

// use const and var plus defaults to denote optional values
struct Employee {
    let name: String
    var vacationRemaining = 14

    mutating func takeVacation(days: Int) {
        if vacationRemaining > days {
            vacationRemaining -= days
            print("I am going on vacation!")
            print("Days remaining: \(vacationRemaining)")
        } else {
            print("Oops! There aren't enough days remaining")
        }
    }
}

var archer = Employee(name: "Sterling Archer", vacationRemaining: 14)
archer.takeVacation(days: 5)
print(archer.vacationRemaining)

let kane = Employee(name: "Lana Kane")
let poovey = Employee(name: "Pam Poovey", vacationRemaining: 35)

//Computing properties dynamically
struct EmployeeStruct {
    let name: String
    var vactionAllocated = 14
    var vacationTaken = 0
    
    // Calculated Dynamically
    var vacationRemaining: Int {
        get {
            vactionAllocated - vacationTaken
        }
        set {
            vactionAllocated = vacationTaken + newValue
        }
    }
}

var marc = EmployeeStruct(name: "Marc Gasol")
marc.vacationTaken += 4
archer.vacationRemaining = 5
print(marc.vacationRemaining)

// Property Observers
struct Game {
    var score = 0 {
        didSet {
            print("Score is now \(score)")
        }
    }
}

var game = Game()
game.score += 10
game.score -= 3
game.score += 1

struct App {
    var contacts = [String]() {
        willSet {
            print("Current value is \(contacts)")
            print("New value will be \(newValue)")
        }
        didSet {
            print("There are now \(contacts.count) contacts")
            print("Old value was \(oldValue)")
        }
    }
}

var app = App()
app.contacts.append("Kevin")
app.contacts.append("Finn")

// Custom Initializers
struct Player {
    let name: String
    let number: Int
    
    init(name: String) {
        self.name = name
        number = Int.random(in: 1...99)
    }
}

let player = Player(name: "Megan R")
print(player.number)

// Access Control
struct BankAccount {
    private(set) var funds = 0
    
    mutating func deposit(_ amount: Int) {
        funds += amount
    }
    
    mutating func withdrow(_ amount: Int) -> Bool {
        if funds > amount {
            funds -= amount
            return true
        } else {
            return false
        }
    }
}

var account = BankAccount()
account.deposit(100)
let success = account.withdrow(200)
if success {
    print("Withdrew money successfully")
} else {
    print("Failed to get the money")
}

// Static Methods
struct School {
    static var studentCount = 0
    
    // Does not need to be marked as mutating like instances of structs.
    static func add(student: String) {
        print("\(student) joined the school.")
        studentCount += 1
    }
}

School.add(student: "Taylor Swift")
print(School.studentCount)

// One use is to store constant data that you access accross app.
struct AppData {
    static let version = "1.3 beta 2"
    static let saveFileName = "settings.json"
    static let homeURL = "https://www.hackingwithswift.com"
}

struct ValidEmployee {
    let username: String
    let password: String
    
    static let example = ValidEmployee(username: "marcGasol", password: "bigSpain123")
}

let testEmployee = ValidEmployee.example
print(testEmployee.username)
print(testEmployee.password)

