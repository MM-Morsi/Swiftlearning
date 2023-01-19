// **var changes value
var welcomeMessage: String
welcomeMessage = "Hello World"
print(welcomeMessage)
welcomeMessage = "Hello World again"


// **const doesn't change value 
let constWelcomeMessage = "Hello, just once"
/*
    /* Compile time error */
    constWelcomeMessage = "Hello"
*/ 


// **terminates with the (END+new line) and seperates values with " & "
print(constWelcomeMessage, welcomeMessage, 
separator: " & " , 
terminator: " END\n")


// **nested multiline comments 
/*
    /* this is a second comment that must be closed */
 */


// **unsigned integer types 
let minValue: UInt8 = UInt8.min


// **signed integer types 
let minValueSigned: Int8 = Int8.min


// **operations 
let x: UInt64 = 15;
let y: UInt64 = 26;
let z: UInt32;
/* 
    /* This causes an error: you cant use 32 with 64 */
    z = x + y; 
*/
z = UInt32(x) + UInt32(y)
print("The value of z is ", z);


// **type inference (and type checks)
/* 
    /*
    to "declare" you give the type of the variable through annotaion 
    to use type inference you must instantiate (using literals)
    you must either declare or instantiate 
    */
    
    let typeInferecedConst;  // this gives compile time error
    var typeInferecedVar;    // this gives compile time error
*/
// It gives double by default for floating points 
let pi = 3.14159
print(type(of: pi))


// **Numeric Literal and using prefix with the literals 
let decimalLiteral = 17     // 17 in decimal 
let binaryLiteral = 0b10001 // 17 in binary 
let octalLiteral = 0o21     // 17 in octal 
let hexadecimalLitera = 0x11     // 17 in hexadecimal 


// **using exponent 
let expDecimal = 15e2   // decimal exponent: 15 x 10^2
let expHexa = 0xFp2     // Hexadecimal exponent: 15 x 2^2 
print(expDecimal, expHexa, separator: "\n")


// **using underscores and zeros 
let oneMillion = 000_1_000_000
print(oneMillion)

/*
    /* Compile error  */
    let CBN: UInt8 = -1
    let tooBig = Int8.max + 1; 
*/


// **Type Aliasa 
typealias UI16 = UInt16
let noAlias: UInt16 = 50
let withAlias: UI16 = 50 
let withAliasMin: UI16 = UI16.min
let withAliasMax: UI16 = UI16.max
print(noAlias, withAlias, withAliasMin, withAliasMax)


// ** Boolian 
var check: Bool = false; 
print(check)
check = true 
print(check)
if check {
    print("this is accurate")    
}
// using values as bool 
let checkValue = 1
/*
    /* This is for type safety */
    if checkValue {
        print("This gives compile time error ")
    }
*/
if checkValue == 1 {
    print("This works now")   
}


// **Tuples
let http404Error = (404, "Not Found")
print(http404Error)
print("Type of Tuple is:  \(type(of: http404Error))") // different types
// Decompose tuples
let (statusCode, statusMessage) = http404Error
print("The status code is: \(statusCode)")
print("The status message is: \(statusMessage)")
// decompose with underscore
let (justStatusCode, _) = http404Error
print("This is just the status code: \(justStatusCode)")
// accessing tuple elements with index 
print("http404Error.0 = ", http404Error.0)
print("http404Error.1 = ", http404Error.1)
// naming tuple elements 
let http200Success = (statusCode: 200, statusMessage: "OK")
print("http200Success.statusCode = ", http200Success.statusCode)
print("http200Success.statusMessage = ", http200Success.statusMessage)



