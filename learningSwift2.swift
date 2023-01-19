// **Optionals 
let possibleNumber = "123"  // normal string 
let convertNumber = Int(possibleNumber) // int optional 
let sureNotNumber = "Hello, World"
let optionalNotNumber = Int(sureNotNumber)
print(convertNumber)        // Optional(123)
print(type(of: convertNumber)) //Optional <Int> or Int?
print(optionalNotNumber)    // nil
print(type(of: optionalNotNumber)) //Optional <Int> or Int?
// convertNumber = convertNumber + 1
/*
    /* Converting from bool to int doesnt work */
    let boolForOptional = true; 
    let cBoolian = Int(boolForOptional);
*/


// *Using nil for valueless variables 
var serverResponse: String? = nil; 
print(serverResponse)
var serverResponseNoDefaultValue: String? 
print(serverResponseNoDefaultValue)


// * forced unwrapping (vs implicit unwrapping) - with optionals only 
if convertNumber != nil 
{
    print("convertNumber contains some value of \(convertNumber)")
    print("Unwrapping the value using ! mark: \(convertNumber!)")
}
//! runtime error at nil value 
// !Unexpectedly found nil while unwrapping an Optional value
// print("server response is \(serverResponse!)") 


// * OPTIONAL BINDING "with conditions: if and while"
// if the optional: possbileNumber has a value, then put the value into const extractOptional and do code logic in if 
// otherwise go directly and do the logic in the else part  
if let extractedOptional = Int(possibleNumber)
{
    print("The string \"\(possibleNumber)\" has an integer of value \(extractedOptional)")
}
else 
{
    print("The string \"\(possibleNumber)\" couldn't be converted")
}
// Using the same name 
let aNumber = Int(possibleNumber)
// / let / = sign not == / same variable name /
if let aNumber = aNumber
{
    print("aNumber const has a value of: ", aNumber)
}
else
{
    print("It doesn't have a value")
}
// shorter spelling -> only works with optionals and the const inside if is not an optional, it's a const OR variable 
if var aNumber
{
    aNumber += 10
    print("variable aNumber += 10 makes aNumber value = ", aNumber)
}
print("The original aNumber after the if body is still: ", aNumber!)
// Multiple binding are available 
if let firstNumber = Int("4"), let secondNumber = Int("42"), firstNumber < secondNumber && secondNumber < 150
{
    print("Multiple optional bindings and conditions")
}


// *Implicit unwrapping : give permission to the optional to unwrap when needed
// *First swift uses it as a normal optional, if not possible it force unwrap the optional 
// forced approach  
let optionalString: String? = "an optional of type string"  // normal OPTIONAL 
let forcedString: String = optionalString!                          // forced STRING
// Implicit unwrapping approach 
let ImpUnwrappedOptional: String! = "An implicitly unwrapped optional of type string"   // Implicitly unwrapped OPTIONAL
let normalStringFromImplicit: String = ImpUnwrappedOptional                             // implicit STRING from FORCING imp unwrapped optional to unwrap 
let optionalStringFromImplicit: String? = ImpUnwrappedOptional                          // normal optional from NOT forcing the imp unwrapped optional 
print("optionalString || forcedString || ImpUnwrappedOptional || normalStringFromImplicit || optionalStringFromImplicit" )                              
print(optionalString, "||", forcedString, "||", ImpUnwrappedOptional, "||",normalStringFromImplicit, "||", optionalStringFromImplicit)
// **there is a nil hazrd and runtime error here like the normal optional 
// **check for nil values the same way you did with normal optionals: "with optional binding"


// *Error Handling overview
//** FIRST: function definition (new concept that you must give keyword to the function itself)
// func throwError() throws {
//     print("This function can throw error")
// }
//** SECOND: usage with do statement wraps try and func call - try expression to wrap the function - catch clause
// do{
//     try throwError()
//     ** Somecode if no error 
// } catch anError.CaseOne{
//     **match case one error type 
//     print("Error washed away")
// } catch anError.CaseTwo (let parametersList) {
//     ** match case two error type
//     print(parametersList)
// }


// *Assertions and Preconditions - runtime checks - Debug/development mode VS Debug/development and production modes
var age = -3
//! assert(age >= 0, "A person age can't be less than zero") // The program fails - debug mode or development mode 
// assert(condition for continuity, string error message) 
var greeting = "Hello, playground"
//*assertionFailure 
age = 10
if age > 10 {
    print("You can ride the roller coaster")
} else if age >= 0 {
    print("You can't ride the roller coaster")
} else {
    assertionFailure("A persion's age can't be less than zero") //! failure at age < 0 
}
// *precondition 
let index = 0
//! precondition(index > 0, "the index must be more than 0") // failure in deployment and development mode 
// complie with unchecked mode -Ounchked :: the preconditions are not checked in the code 
//* fatalError
//! fatalError("This halts execution no matter what") // use this at prototyping and early development 


// *