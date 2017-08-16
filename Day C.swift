
import Foundation

// Class Person
class Person {
    var firstName: String
    var lastName: String
    var id: Int

    // Initializer
    init(firstNameString: String, lastNameString: String, identificationNumber: Int) {
        firstName = firstNameString
        lastName = lastNameString
        id = identificationNumber
    }

    // Print person data
    func printPerson() {
        print("Name: \(lastName), \(firstName)")
        print("ID: \(id)")
    }
} // End of class Person
// Class Student
class Student: Person {
    var testScores: [Int]
    
/*	
    *   Initializer
    *   
    *   Parameters:
    *   firstName - A string denoting the Person's first name.
    *   lastName - A string denoting the Person's last name.
    *   id - An integer denoting the Person's ID number.
    *   scores - An array of integers denoting the Person's test scores.
    */
    // Write your initializer here
    init(firstName: String, lastName: String, identification: Int, scores: [Int]) {
        self.testScores = scores
        super.init(firstNameString: firstName, lastNameString: lastName, identificationNumber: identification)
    }
    /*	
    *   Method Name: calculate
    *   Return: A character denoting the grade.
    */
    // Write your method here
    func calculate() -> Character {     
        var sum = 0
    	for i in testScores
        {
            sum+=i         
        }
        sum=sum/testScores.count
        if sum<=100 && sum>=90{
            return "O";
        }
        else if sum<90 && sum>=80{
            return "E";
        }
        else if sum<80 && sum>=70{
            return "A";
        }
        else if sum<70 && sum>=55{
            return "P";
        }
        else if sum<55 && sum>=40{
            return "D";
        }      
        return "T";  
    }
} // End of class Student
let nameAndID = readLine()!.components(separatedBy: " ").map{ String($0)! }
let _ = readLine()
let scores = readLine()!.components(separatedBy: " ").map{ Int($0)! }

let s = Student(firstName: nameAndID[0], lastName: nameAndID[1], identification: Int(nameAndID[2])!, scores: scores)

s.printPerson()

print("Grade: \(s.calculate())")
