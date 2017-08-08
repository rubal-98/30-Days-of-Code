import Foundation
var n = Int(readLine()!)
// Enter your code here 
func factorial(_ n: Int!)->Int{
    if(n!<=1){
        return 1
    }
    else{
        return (n!*factorial(n!-1))
    }
}
var i = factorial(n!)
print(i)

