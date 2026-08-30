import 'dart:collections';

class Node<T> {
    T data;
    Node<T>? next;

    Node(this.data);
}

class LinkedList<T> {
  Node<T>? head;

  LinkedList<T> add(T data) {
    final newNode = Node(data);
    if (head == null) {
      head = newNode;
      return this;
    }

    Node<T>? current = head;
    while (current!.next != null) {
      current = current.next;
    }
    current.next = newNode;
    return this;
  }

  void printList() {
    Node<T>? current = head;
    while (current != null) {
      print("${current.data} -> ");
      current = current.next;
    }
    print('null');
  }


}


void main() {
  final list = LinkedList<int>()
  ..add(10)
  ..add(20)
  ..add(30);

  list.printList();

  
}