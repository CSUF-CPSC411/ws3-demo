// Code snippet 6

func welcome(_ name: String) -> Void {
    print("Welcome \(name)!")
}

// If no return types are provided, it is assumed to be Void
func yokoso(_ name: String) {
    print("\(name) ようこそ ")
}

/* Functions in Swift can be stored in variables and are assigned special function types. In the example below, the variable greet can store any function that accepts a single String variable and does not return a value. To represent a function data type, we list the parameter data types inside parentheses and the return type is written after the arrow symbol. In this example, (String) -> Void. We can assign the function to the variable using the assignment statement. Take note we only provide the name of the function. */

var greet: (String) -> Void = welcome
// We can call the function using the name of the variable.
greet("Paul") // Displays "Welcome Paul"

/* Just like any other variable, greet can be assigned another value with the same data type. We see that welcome and yokoso have the same parameter and return types, therefore they can both be assigned to greet.
 */
greet = yokoso
greet("Paul") // Displays "Paul ようこそ"

// Code snippet 7

/* You can assign closure expressions to a variable instead of a regular function. Closure expressions use the following syntax:
    
    { (<parameter list>) -> <return type> in
      <function body>
    }
 */
greet = { (name: String) -> Void in
  print("Kamusta \(name)")
}

/* Closure expressions do not use argument labels so they may be less readable. */
greet("Paul")



// Code snippet 8

/* We learned that functions and closure expressions can be assigned to variables. This also means that we can pass functions and closure expressions as arguments to function calls 🤯 */

/* The greet parameter's data type is (String) -> Void so it can accept any function with this signature. */
func deposit(_ amount: Double,
             to account: String,
             greetWith greet: (String) -> Void) -> Void {
  // We call the passed function
  greet(account)
  print("We deposited $\(amount) to your account.")
}

/* We pass a closure expression as the last argument in our function call. */
deposit(500.00, to: "Paul Inventado", greetWith: {
    (name: String) -> Void in
    print("\(name) 你好 ") // read as ni hao
})

