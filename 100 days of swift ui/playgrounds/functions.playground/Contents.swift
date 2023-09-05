import UIKit

func printTimesTables (number: Int, end: Int) {
    for i in 1...end {
        print("\(i) * \(number) is \(i * number)")
    }
}

printTimesTables(number: 1, end: 12)
printTimesTables(number: 2, end: 12)
printTimesTables(number: 5, end: 20)
