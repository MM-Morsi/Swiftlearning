//* Closures 
// https://www.youtube.com/watch?v=4-EvBzIT5Y0
func sayHello(){
    print("Hello")
}

let sayHelloClosure:() -> () = { print("Hello Closure")
}

let sayHelloClosure2:() -> Void = { print("Hello Closure using Void")
}
sayHello()
sayHelloClosure()
sayHelloClosure2()

let helloClosure = {
    (name: String) in 
    print("Hello \(name)")
}
let helloClosureEquivilant: (String) -> () = {
    (name) in 
    print("Hello \(name)")
}
helloClosure("Mo")
helloClosureEquivilant("Mo Equivilant")



//* Two parameters 
func sum(a: Int, b: Int) -> Int{
    a + b
}
let answer = sum(a: 5, b: 7)
print(answer)
// closure 
// -> Int is optional 
// return keyword is optional 
let sumClosure = {(a: Int, b: Int) -> Int in 
    return a + b 
}
print(sumClosure(5, 7))
// print(sumClosure(a: 5, b: 7)) //! error due to a: and b: 


//* sort by 
let names = ["Chris", "Alex", "Ewa", "Barry", "Daniella"]
// a colsure with bool return -> true if the s1 before s2 
func backward(_ s1: String, _ s2: String) -> Bool {
    return s1 > s2 
}
// sort by method in strings - sorting closure 
var reveresedNames = names.sorted(by: backward)
print(reveresedNames)
// chris > alex -> return true 
print("chris" > "alex") // true 
func forward(_ s1: String, _ s2: String) -> Bool {
    return s1 < s2
}
var forwardNames = names.sorted(by: forward)
print(forwardNames)


//* Inline Closure expression "shorthand"
// {(parameters) -> return type in
// code }
var forwardNames2 = names.sorted(by: {(_ s1: String, _ s2: String) ->  Bool in 
    return s1 < s2
})
print(forwardNames2)
//* you can remove the _ from the declaration 
//* curly braces are the difference in declaration from a normal function 


//* Clsoures as function parameters 
func helloFunc(_ name: String, _ sayIt: (String) -> ()) {
    let newName = name.uppercased()
    sayIt(newName)
}
helloFunc("Stewart", {name in 
    print("Hello \(name)")
})




