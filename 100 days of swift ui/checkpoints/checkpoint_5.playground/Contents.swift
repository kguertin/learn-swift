import UIKit

let luckyNumber = [7,4,38,21,16,15,12,33,31,49]

let modifiedNumbers = luckyNumber.filter({ $0 % 2 != 0 }).sorted(by: { $0 < $1 }).map({ "\($0) is a lucky number" })

print(modifiedNumbers)
