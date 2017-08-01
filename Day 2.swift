// Enter your code here. Read input from STDIN. Print output to STDOUT
import Foundation

var mealCost = Double(readLine()!)
var tipPercent = Double(readLine()!)
var taxPercent = Double(readLine()!)

var tip = (mealCost! )*( tipPercent!/100)
var tax = (mealCost! * taxPercent!)/100

var totalCost:Double
totalCost=mealCost!+tip+tax

print("The total meal cost is",Int(round(totalCost)),"dollars.")
