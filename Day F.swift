import Foundation

class Node {
    let data: Int
    var next: Node?

    init(data: Int) {
        self.data = data
    }
}
func insert(head: Node?, data: Int!) -> Node? {
    // Enter your code here.
    var head = head
    if head == nil
    {
        head = Node(data: data)
        head!.next = nil
        return head
    }
    var current = head
    var nnode: Node?
     nnode = Node(data: data)
     nnode!.next = nil
    while current!.next != nil {
        
        current = current!.next
    }
    current!.next=nnode
    return head
}
func display(head: Node?) {
    var current = head

    while current != nil {
        print(current!.data, terminator: " ")
        current = current!.next
    }
}

var head: Node?
let n: Int = Int(readLine()!)!

for _ in 0..<n {
    let element = Int(readLine()!)!
    head = insert(head: head, data: element)
}

display(head: head)
