import Foundation

// number of elements
let n = Int(readLine()!)!

// read array
let arr = readLine()!.components(separatedBy: " ").map{ Int($0)! }

// iterate over the array in reverse order and print the elements separated by space
var i:Int
i=n
i=i-1
var value = ""
while(i>=0){
value.append(String(arr[i]))
value.append(" ")
i=i-1;
}
print(value)
