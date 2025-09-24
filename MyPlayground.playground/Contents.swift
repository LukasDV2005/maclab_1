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
    return String(p.reversed())
}
print(reverseString(p: ))
