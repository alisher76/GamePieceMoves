import Darwin

//let number1 = 5
//let number2 = 10
//
//print(number1 + number2)
//
//func twoNums(num1: Int, num2:Int) -> Int {
//    
//    return num1 + num2
//}
//
//print(twoNums(num1: 10, num2: 20))


func exitCounter(_ code: Int32) -> Never {
    print("Bad thing happened here on line: \(code)")
    exit(code)
}

let withoutFirst = CommandLine.arguments.dropFirst()
guard withoutFirst.count == 2 else {
print("Incorrect number of arguments")
    exitCounter(Int32(#line))
}
let integers = withoutFirst.flatMap { Int($0) }
guard integers.count == 2 else {
    print("Incorrect number of numbers")
    exitCounter(Int32(#line))
}

print(integers[0] + integers[1])
