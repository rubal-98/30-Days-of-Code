import Foundation

// read the integer n
let n = Int(readLine()!)!

// read the array
var arr = readLine()!.components(separatedBy: " ").map{ Int($0)! }
var i = 0
var j = 0
 var numberOfSwaps = 0
for i in 0..<(arr.count-1)
   {
   
    // Track number of elements swapped during a single array traversal
   
    
    for j in 0..<(arr.count-1)
    {
        // Swap adjacent elements if they are in decreasing order
        if arr[j] > arr[j + 1] 
        {
            var temp = 0
            temp=arr[j]
            arr[j]=arr[j+1]
            arr[j+1]=temp
            numberOfSwaps+=1;
        }
    }
    
    // If no elements were swapped during a traversal, array is sorted
    if (numberOfSwaps == 0) {
        break;
    }
    
    
    }
   
 print("Array is sorted in \(numberOfSwaps) swaps.")
    print("First Element: \(arr[0])")
    print("Last Element: \(arr[n-1])")
