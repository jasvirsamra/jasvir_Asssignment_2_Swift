/*create a Location struct with x and y coordinates (as we did with the pizza example)
use the same storeRange from the pizza example as well, 2.5 (change if you like of course)
create 2 store locations (Location, as we did with the pizza example)
create a Customer struct that includes the following properties:
name (String, full name )
email (String, don't worry about validation for now)
phone number (String, don't worry about validation for now)
acceptedNewsletter (Bool)
location (Location, x and y coordinates, just like the pizza example)
create an array of customers (Customer, at least 10)
write a function that takes in a single store location and the collection of customers and prints the email
*/

struct Location {
var x: Double
var y: Double
}

let storeRange = 2.5

let storeLocation1 = Location(x: 3, y: 3)
let storeLocation2 = Location(x: 9, y: 9)

struct Customer {
    let Name: String
    let Email: String
    let phoneNumber: String
    let acceptedNewsletter: Bool
    let location: Location
}

var customers: [Customer] = [
    Customer(Name: "Jassi", Email: "jassi@gmail.com", phoneNumber: "6476758763", acceptedNewsletter: true, location: Location(x: 5, y: 5)),
    Customer(Name: "Samra", Email: "samra@gmail.com", phoneNumber: "5647658763", acceptedNewsletter: false, location: Location(x: 6, y: 6)),
    Customer(Name: "Dan", Email: "dan@gmail.com", phoneNumber: "6476758510",
             acceptedNewsletter: true, location: Location(x: 5, y: 5)),
    Customer(Name: "John", Email: "john@icloud.com", phoneNumber: "6472100001", acceptedNewsletter: false, location: Location(x: 8, y: 8)),
    Customer(Name: "Peter", Email: "peter@icloud.com", phoneNumber: "6476758663", acceptedNewsletter: true, location: Location(x: 11, y: 11)),
    Customer(Name: "Ajay", Email: "ajay@yahoo.com", phoneNumber: "6576421432", acceptedNewsletter: false, location: Location(x: 2, y: 5)),
    Customer(Name: "Vinay", Email: "vinay@yahoo.com", phoneNumber: "6476590003", acceptedNewsletter: true, location: Location(x: 13, y: 14)),
    Customer(Name: "Vicky", Email: "vicky@hotmail.com", phoneNumber: "6754650004", acceptedNewsletter: false, location: Location(x: 2, y: 4)),
    Customer(Name: "Sunny", Email: "Sunny@hotmail.com", phoneNumber: "6476758763", acceptedNewsletter: true, location: Location(x: 10, y: 13)),
    Customer(Name: "Ramesh", Email: "Ramesh@gmail.com", phoneNumber: "987-654-3210", acceptedNewsletter: false, location: Location(x: 7, y: 5)),
    
]

func distance(from source: Location,to target: Location) -> Double {
  let distanceX = Double(source.x - target.x)
  let distanceY = Double(source.y - target.y)
  return (distanceX * distanceX +
    distanceY * distanceY).squareRoot()
}


func printEmailsWithinRange(store: Location, customers: [Customer]) {
    for customer in customers {
        let distanceToStore = distance(from: store, to: customer.location)
        if distanceToStore <= storeRange {
            print("Name: \(customer.Name) Email: \(customer.Email)")
                    }
    }
}

print("Customers within store range of storeLocation1:")
printEmailsWithinRange(store: storeLocation1, customers: customers)

