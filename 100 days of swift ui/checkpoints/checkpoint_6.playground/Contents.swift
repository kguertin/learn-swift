import UIKit

struct Car {
    public let model: String
    public let numberOfSeats: Int
    
    private(set) var currentGear = 1 {
        didSet {
            print("Gear Changed. \(model) now in gear \(currentGear)")
        }
    }
    
    mutating func shiftUp() {
        if currentGear < 10 {
            currentGear += 1
        } else {
            print("\(model) annot shift higher")
        }
    }
    
    mutating func shiftDown() {
        if currentGear > 1 {
            currentGear -= 1
        } else {
            print("\(model) cannot shift lower")
        }
    }
    
    func checkGear() {
        print("\(model) is currently in gear \(currentGear)")
    }
}


var golf = Car(model: "GTI Golf", numberOfSeats: 4)
var bmw = Car(model: "BMW", numberOfSeats: 2)

print(golf.model, golf.numberOfSeats)
print(bmw.model, bmw.numberOfSeats)

golf.shiftUp()
golf.shiftUp()
bmw.shiftUp()
bmw.shiftUp()
golf.shiftDown()
golf.shiftDown()
bmw.shiftUp()
golf.shiftDown()
bmw.shiftUp()
golf.shiftDown()
golf.checkGear()
bmw.shiftUp()
bmw.checkGear()
