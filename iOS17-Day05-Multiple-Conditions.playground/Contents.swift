import Cocoa

//How to check multiple conditions
let age = 16

if age >= 18 {
    print("You can vote in the next election.")
} else {
    print("Sorry, you're too young to vote.")
}


if age >= 18 {
    print("You can vote in the next election")
} else if age == 16 {
    print("You can get a job.")
} else {
    print("You have to finish school.")
}


//Check a range of values
let temp = 25

if temp > 20 {
    if temp < 30 {
        print("It's a nice day.")
    }
}

//The above condition can be rewritten as follows:
if temp > 20 && temp < 30 {
    print("It's a nice day.")
}


//The OR logical operator can be demoed as follows
let userAge = 14
let hasParentalConsent = true

if age >= 18 || hasParentalConsent {
    print("You can buy the game!")
}

// A more complex example
enum TransportOption {
case airplane, helicopter, bicycle, car, escooter
}

let transport = TransportOption.airplane
if transport == .airplane || transport == .helicopter {
    print("Let's fly!")
} else if transport == .bicycle {
    print("I hope there's a bike path.")
} else if transport == .car {
    print("Time to get stuck in traffic.")
} else {
    print("I'm going to hire a scooter now!")
}
