import Foundation
class Solution {
  //Write your code here
  var string1: [Character]  = []
  var string2: [Character]  = []
  
  func pushCharacter(c: Character)
  {
    string1.append(c)
  }
  func enqueueCharacter(c: Character)
  {
    string2.append(c)
  }
  func popCharacter() -> Character
  {
    return string1.removeFirst()
  }
  func dequeueCharacter() -> Character
  {
    return string2.removeLast()
    
  }

}
// read the string s.
let s = readLine()!

// create the Solution class object p.
let obj = Solution()

// push/enqueue all the characters of string s to stack.
for c in s.characters {
    obj.pushCharacter(c: c)
    obj.enqueueCharacter(c: c)
}

var isPalindrome = true

// pop the top character from stack.
// dequeue the first character from queue.
// compare both the characters.
for _ in 0..<(s.characters.count / 2) {
    if obj.popCharacter() != obj.dequeueCharacter() {
        isPalindrome = false

        break
    }
}

// finally print whether string s is palindrome or not.
if isPalindrome {
    print("The word, \(s), is a palindrome.")
} else {
    print("The word, \(s), is not a palindrome.")
}
