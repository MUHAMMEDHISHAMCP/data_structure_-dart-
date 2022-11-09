import 'linked_list.dart';
import 'sorting.dart';
import 'tree.dart';

void main(List<String> args) {
  var linkedList = SLinkedList();
  linkedList.addNode(2);

  var tree = BinarySearchTree();
  tree.insertNode(10);
  tree.insertNode(4);
  tree.insertNode(12);
  tree.insertNode(2);
  final val = tree.getMinValue(tree.root);
  // final val = tree.isContains(4);
  print(val);
//  remove();
// dup();
  var sorting = Sorting();
  var a = sorting.buble([1, 2, 3, 4, 5]);
}
