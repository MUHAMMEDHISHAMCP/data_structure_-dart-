class Node {
  int? data;
  Node? next;
  Node(int data) {
    this.data = data;
  }
}

 class SLinkedList {
   Node? head;
   Node? tail;
  var a = "jdhch";
void ss(){
 print(a.split('').reversed.join());
 }
   void addNode(int data) {
     var newNode = Node(data);
    if (head == null) {
       head = newNode;
          print('object');
     } else {
      tail!.next = newNode;
     }
    tail = newNode;
  }

  void delete(int data) {
    Node? temp = head, prev = null;
    if (head != null && temp!.data == data) {
      head = temp.next;
      return;
    }
    while (temp != null && temp.data != data) {
      prev = temp;
      temp = temp.next;
    }

    if (temp == null) {
      return;
    }

    if (temp == tail) {
      tail = prev;
      tail!.next = null;
    }
    prev!.next = temp.next;
  }

  void insertAfter(int nextTo, int data) {
    var newNode = Node(data);
    var temp = head;
    while (temp != null && temp.data != nextTo) {
      temp = temp.next;
    }

    if (temp == null) {
      return;
    }

    if (temp == tail) {
      tail!.next = newNode;
      tail = newNode;
      return;
    }
    newNode.next = temp.next;
  }

 void reverse(){
   var temp= head;
   var nextNode = head,prev=null;

   while (nextNode != null) {
     nextNode = nextNode.next;
     temp!.next = prev;
     prev =temp;
     temp=nextNode;
   }
   head =prev;
  }

  void display() {
    if (head == null) {
      print('object');
    }

    var temp = head;

    while (temp != null) {
      print(temp.data);
      temp = temp.next;
    }
  }
}