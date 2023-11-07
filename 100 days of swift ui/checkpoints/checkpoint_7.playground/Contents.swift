class Animal {
    let legs: Int
    
    init(legs: Int) {
        self.legs = legs
    }
}


class Dog: Animal {
    func speak() {
        print("Woof Woof")
    }
}


final class Corgi: Dog {
    override func speak() {
        print("Bork Bork")
    }
}

final class Poodle: Dog {
    override func speak() {
        print("Le Woof, Le Woof")
    }
}

class Cat: Animal {
    let isTame: Bool
    
    init(legs: Int, isTame: Bool) {
        self.isTame = isTame
        super.init(legs: legs)
    }
    
    func speak() {
        print("MEOW!")
    }
}

final class Persian: Cat {
    override func speak() {
        print("Meow Meow!")
    }
}

final class Lion: Cat {
    override func speak() {
        print("ROAR!!!!")
    }
}

let cat1 = Persian(legs: 4, isTame: true)
cat1.speak()
let cat2 = Lion(legs: 4, isTame: false)
cat2.speak()
let dog1 = Corgi(legs: 4)
dog1.speak()
let dog2 = Poodle(legs: 4)
dog2.speak()
