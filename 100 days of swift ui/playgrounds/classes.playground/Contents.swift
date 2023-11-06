class Game {
    var score = 0 {
        didSet {
            print("Score is now \(score)")
        }
    }
}

var newGame = Game()
newGame.score += 10


class Employee {
    let hours: Int
    
    init(hours: Int) {
        self.hours = hours
    }
    
    func printSummary() {
        print("I work \(hours) hours a day")
    }
}

final class Developer: Employee {
    func work() {
        print("I'm writing code for \(hours) hours.")
    }
    
    override func printSummary() {
        print("I'm a developer who will sometimes work \(hours) hours a day, but other times will sped hours arguing about whether code should be indented using tabs or spaces.")
    }
}

final class Manager: Employee {
    func work() {
        print("I'm going to meetings for \(hours) hours.")
    }
    
}

let robert = Developer(hours: 8)
let joseph = Manager(hours: 10)
robert.work()
joseph.work()

let novall = Developer(hours: 8)
novall.printSummary()

class Vehicle {
    let isElectric: Bool
    
    init(isElectric: Bool) {
        self.isElectric = isElectric
    }
}

class Car: Vehicle {
    let isConvertible: Bool
    
    init(isElectric: Bool, isConvertible: Bool) {
        
        self.isConvertible = isConvertible
        super.init(isElectric: isElectric)

    }
}

let teslaX = Car(isElectric: true, isConvertible: false)

// Reference Types - Classes share data across instances, structs do not.
class User {
    var username = "Anonymous"
    
    func copy() -> User {
        let user = User()
        user.username = username
        return user
    }
}

var user1 = User()
var user2 = user1
user2.username = "Taylor"
print("\(user1.username)")
print("\(user2.username)")

var user3 = user2.copy()
user3.username = "Marc"
print(user3.username)

// Deinitalizers - run when the LAST remaining refernce to a class instance is destroyed

class NewUser {
    let id: Int
    init (id: Int) {
        self.id = id
        print("User \(id): I'm alive!")
    }
    
    deinit {
        print("User \(id): I'm dead!")
    }
}

var users = [NewUser]()
for i in 1...3 {
    let user = NewUser(id: i)
    print("User \(user.id): I'm in control!")
    users.append(user)
}
print("Loop finished")
users.removeAll()
print("Array is clear")


// Variables inside classes
class SiteUser {
    var name = "Paul"
}

var user = SiteUser()
user.name = "taylor"
user = SiteUser()
print(user.name)

// ***********************************************
// Can have four types of class:
// 1) Constant class with constant properties
// 2) constat class with variable properties
// 3) variable class with constant properties
// 4) variable class with variable properties
// ***********************************************
// Different from structs as constant stucts cannot have properties changed even if properties are variable.


