/* questionLeetCode reverse LinkedList
Given the head of a singly linked list, reverse the list, and return the reversed list.
Example 1:
Input: head = [1,2,3,4,5]
Output: [5,4,3,2,1]

Example 2:
Input: head = [1,2]
Output: [2,1]

Example 3:
Input: head = []
Output: [] */
// Definition for singly-linked list.
class ListNode {
  int val;
  ListNode? next;
  ListNode([this.val = 0, this.next]);

  void printListNode() {
    ListNode? currentNode = ListNode(val, next);
    while (currentNode != null) {
      print('${currentNode.val} =>');
      currentNode = currentNode.next;
    }
    print('null');
  }
}

ListNode? reverseList(ListNode? head) {
  if (head == null) return head;
  ListNode? first = head;
  print('first: ${first.val}');
  ListNode? current = first;
  ListNode? previous = null;
  ListNode? afterCurrent;
  while (current != null) {
    afterCurrent = current.next;
    current.next = previous;
    previous = current;
    current = afterCurrent;
  }
  first = previous;
  print('first after revers ${first!.val}');
  return first;
}

void main() {
  ListNode node = ListNode(5, null);
  ListNode node1 = ListNode(4, node);
  ListNode node2 = ListNode(3, node1);
  ListNode node3 = ListNode(2, node2);
  ListNode node4 = ListNode(1, node3);
  print('/////List/////');
  node4.printListNode();
  print('/////reverse List/////');
  ListNode? reverse = reverseList(node4);
  reverse!.printListNode();
}
