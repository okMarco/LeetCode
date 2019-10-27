import UIKit

public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init(_ val: Int) {
        self.val = val
        next = nil
    }
}

class Solution {
    func reverseKGroup(_ head: ListNode?, _ k: Int) -> ListNode? {
        var prev: ListNode?
        var curr: ListNode? = head
        var next: ListNode?

        var count = 0
        while curr != nil {
            count = count + 1
            curr = curr?.next
        }
        if count < k {
            return head
        }

        curr = head

        var n = k
        while n > 0 {
            next = curr?.next
            curr?.next = prev
            prev = curr
            curr = next
            n = n - 1
        }
        if let curr = curr {
            head?.next = reverseKGroup(curr, k)
        }
        return prev
    }
}

let n1 = ListNode(1)
let n2 = ListNode(2)
let n3 = ListNode(3)
let n4 = ListNode(4)
let n5 = ListNode(5)

n1.next = n2
n2.next = n3
n3.next = n4
n4.next = n5

var curr : ListNode? = n1
while curr != nil {
    print("\(curr!.val) ", terminator: "")
    curr = curr!.next
}

print()

curr = Solution().reverseKGroup(n1, 3)
while curr != nil {
    print("\(curr!.val) ", terminator: "")
    curr = curr!.next
}
