//: Playground - noun: a place where people can play

import UIKit
/*
var str = "Hello, playground"

//Optional ?  - When put a ? after a type declaration we state that there could be a value or no value at all. In Swift, "no value"n is also represented by nil. This is our sentinel.

func factorial(number: Int) -> Int? {
    if (number < 0) {
        return nil
    }
    var result = 1
    for factor in 1...number {
        result = result * factor
    }
    return result
}

factorial(5)

factorial(-3)


//forced unwrapping operator ! ---if use forced unwrapping on a nil, this will cause a runtime exception and a crash in app.  cos type Int is different from Int?

factorial(3)! + 7

//Optional Binding
if let result = factorial(3) {
    result + 7
}

let numbers = [2, 5, 3, -1, 9, 12, 4]
var index = 0
while let result = factorial(numbers[index]) {
    index++
}
print(index)

// Nil coalescing ?? ---if it is nil, use 0. If an optional has a value, ?? return it, otherwise it returns the second value.

let result = factorial(-7) ?? 0

let x = factorial(-3)
let y = factorial(-5)
let z = factorial(-7)

let result1 = x ?? y ?? z ?? 0

let result2 = x ?? y ?? z


//Happy path and early exit  ----Guard statement are intended for early exit only, so they come with a restriction: they must contain and exit statement, either return when they are used to exit from a function, or continue or break when they are used inside loops.
func messageForName(name: String?, age: Int?, city: String?) -> String {
    guard let name = name else {
        return "aaaa"
    }
    guard let age = age else {
        return "\(name), you"
    }
    guard let city = city else {
        return "\(name), \(age), but"
    }
    return "hi, \(name), \(age), \(city)."
}

// Optional in Structures and classes

// Optional chaining on properties ---- using a ? after the optional property --- here ? means "If it has a value, access the specified property, otherwise return nil."

class Person {
    var libraryCard: LibraryCard?
    var libraryCard1: LibraryCard1?
}

class LibraryCard {
    var numberOfBorrowedBooks = 0
}

let john = Person()
if let numberOfBorrowedBooks = john.libraryCard?.numberOfBorrowedBooks {
    print("\(numberOfBorrowedBooks)")
} else {
    print("no library card")
}
// check if the assignment was successful
if (john.libraryCard?.numberOfBorrowedBooks = 1) != nil {
    print("assignment was successful")
} else {
    print("It wasn't possible to assign a new identifier")
}

// Optional chaining on methods

class LibraryCard1 {
    var borrowedBooks = [Book]()
    var numberOfBorrowedBooks: Int {
        get {
            return borrowedBooks.count
        }
    }
    func addBook(book: Book) {
        borrowedBooks.append(book)
    }
}

class Book {
    let title: String
    init(title: String) {
        self.title = title
    }
}


let book = Book(title: "Moby Dick")
if (john.libraryCard1?.addBook(book)) != nil {
    print("John has borrowed \(book.title)")
} else {
    print("no library card and cannot borrow books")
}

*/
//Multiple levels of chaining --- Optional chaining can be concatenated to drill down multiple levels of optionals.

class LibraryCard {
    var borrowedBooks = [Book]()
    var numberOfBorrowedBooks: Int {
        get {
            return borrowedBooks.count
        }  }
    
    var lastBorrowedBook: Book? {
        return borrowedBooks.last  }
    
    func addBook(book: Book) {
        borrowedBooks.append(book)  } 
}

class Book {
    let title: String
    init(title: String) {
        self.title = title
    }
}

class Person {
    var libraryCard: LibraryCard?
}

var john = Person()
john.libraryCard = LibraryCard()
let book = Book(title: "Moby Dick")
john.libraryCard?.addBook(book)
if let bookTitle = john.libraryCard?.lastBorrowedBook?.title {
    print("The last book John has borrowed is \(book.title)")  } else {
    print("John has not borrowed any books")  }
// prints "The last book John has borrowed is Moby Dick"

//OPTIONAL CHAINING ON OPTIONAL PROTOCOL REQUIREMENTS
//Until now we have seen the use of optionals for things that might not return a value. Optional chaining can be also used for properties and methods in protocols that are not a requirement and thus might not ex- ist at all. This is the case with optional protocol requirements. When defining a protocol, it is possible to specify some methods or properties as op- tional. This means that the classes that conform to the protocol are not required to implement them and might ignore them. Thus, when you are accessing these optional properties or methods of an instance that conforms to such protocol, you cannot be sure that this instance has an implementation for them. For this reason the use of optional chaining is required.


class Spell: NSObject {
}
@objc protocol Familiar {
    optional func familiarSpell() -> Spell
}

class Wizard {
    var familiar: Familiar?
    var spells = [Spell]()
    func availableSpells() -> [Spell] {
        guard let familiarSpell = familiar?.familiarSpell?() else {  return spells
        }
        return spells + [familiarSpell]  }
}

//Pay attention to this example because here optional chaining is used in two different ways. The first one we have already seen. A Wizard might not have a familiar, so the familiar property is an optional. We traverse this property through optional chaining. The second one in- stead checks if the familiarSpell() method is present. Notice that the ? here is placed before the parentheses in the method call and not after. The latter would check if the returned value existed, while in this case we are checking for the existence of the method itself.

//Avoiding the checks for nil


