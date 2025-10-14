import UIKit

var text = "SWIFT"
let max = 10
var average = 0.0
let naam = (voornaam: "Lukas" , familienaam: "Devos")
print(naam)
var reversedString : String? = "waarde"
if reversedString == nil {
    print("no result")
} else {
    if let reversedString = reversedString {
        print(reversedString)
    }
}
func reverseString(p: String?) -> String {
    if let newP = p {
        return String(newP.reversed());
    } else {
        return "";
    }
}
print(reverseString(p: nil))

func getUpperLowerCount(s: String) -> (uppercase: String, lowercase: String, charCount: Int) {
    let uppercase = s.uppercased()
    let lowercase = s.lowercased()
    let charCount = s.count
    return (uppercase, lowercase, charCount)
}

var result = (getUpperLowerCount(s: "iOS 26"))

print(getUpperLowerCount(s: "iOS 26").uppercase)
print(getUpperLowerCount(s: "iOS 26").lowercase)
print(getUpperLowerCount(s: "iOS 26").charCount)
print(result)

func divide(i1: Int, i2: Int) -> Double {
    return (Double(i1)/Double(i2))
}
print (divide(i1: 4, i2: 3))
print (divide(i1: 4, i2: 0))

func calculate(numbers: Double...) -> (avg: Double, min: Double?, max: Double?, count: Int) {
    var total: Double = 0
    for number in numbers {
        total += number
    }
    let currentMax = numbers.max()
    let currentMin = numbers.min()
    let average = total / Double(numbers.count)
    let count = numbers.count
    return (average, currentMin, currentMax, count)
}
var c1 = calculate(numbers:10,0,5)
print(c1.avg)
var c2 = calculate(numbers: 4,5,6,-3)
print(c2.avg)
var c3 = calculate(numbers: -3)
print(c3.avg)

var x = 10.0
var y = 3
func increment(number1: inout Double, number2: inout Int) {
    number1 += 1
    number2 += 1
}
increment(number1: &x, number2: &y)
print(x,y)
