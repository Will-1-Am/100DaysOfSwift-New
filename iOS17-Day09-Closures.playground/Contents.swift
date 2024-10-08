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

sayHello2("Taylor")  // Parameter names are lost in closures

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


// Why this matters?
let team = ["Gloria", "Suzanne", "Piper", "Tiffany", "Tasha"]
let sortedTeam = team.sorted()
print(sortedTeam)  // ["Gloria", "Piper", "Suzanne", "Tasha", "Tiffany"]

/*
 Write a custom sorting function for sorted() that makes the
 captain appear first in the list with the remaining team
 sorted alphabetically
 */

/*
 captainFirstSorted takes two Strings and returns a Bool meaning it can be used by the sorted Array method.
 */
func captainFirstSorted(name1: String, name2: String) -> Bool {
// If "Suzanne" is assumed to be the team captain, and she should appear first in the list,
    if name1 == "Suzanne" {
        //name1 should come before name2
        return true
    } else if name2 == "Suzanne" {
        //No, name1 should NOT come before name2
        return false
    }
    // Otherwise do a regular sort
    return name1 < name2
}

//let captainFirstTeam = team.sorted(by: captainFirstSorted)
//print(captainFirstTeam)  //["Suzanne", "Gloria", "Piper", "Tasha", "Tiffany"]

// Converting the captainFirstTeam constant with a closure looks like this.
let captainFirstTeam = team.sorted(by: { (name1: String, name2: String) -> Bool in
    if name1 == "Suzanne" {
        return true
    } else if name2 == "Suzanne" {
        return false
    }
    return name1 < name2
})

print(captainFirstTeam)  //["Suzanne", "Gloria", "Piper", "Tasha", "Tiffany"]
