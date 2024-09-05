import Cocoa

//How to create and use closures
func greetUser() {
    print("Hi there!")
}

greetUser()
var greetCopy = greetUser  // Creating a copy of the function the () are not included.  If the () are included the assignment means that the function should be executed and the value stored in greetCopy.
greetCopy()


// What if you'd just like to assign some functionality to a variable or a constant
let sayHello = {
    print("Hi there!")
}

sayHello()
// The above is called a closure expression - this one is like a function that returns nothing at all


// If we want the closure to take parameters, they have to be written inside the curly braces.

let sayHello2 = { (name: String) -> String in
    "Hi \(name)!"
}


// When a function is copied the parameter name information is lost
func getUserData(for id: Int) -> String {
    if id == 1989 {
        return "Taylor Swift"
    } else {
        return "Anonymous"
    }
}

let data: (Int) -> String = getUserData
let user = data(1989)  // Calling the original function the "for" parameter name would be used.
print(user)

