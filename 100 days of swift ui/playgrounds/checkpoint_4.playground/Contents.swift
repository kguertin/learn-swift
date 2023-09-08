import UIKit

enum SquareRootErrors: Error {
    case OutOfBounds, NoRoot
}

func squareRootOfInt(_ number: Int) throws -> Int {
    if number < 1 || number > 10_000 {
        throw SquareRootErrors.OutOfBounds
    }
    
    for i in 1...100 {
        let square = i * i
        if square == number {
            return i
        }
    }
    
    throw SquareRootErrors.NoRoot
}

do {
    let result = try squareRootOfInt(10)
    print(result)
} catch SquareRootErrors.OutOfBounds{
    print ("number was outside of acceptable range (1-10000)")
} catch SquareRootErrors.NoRoot {
    print("Unable to find square root of number")
} catch {
    print("There was an error!")
}


