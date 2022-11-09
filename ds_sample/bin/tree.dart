// class Node {
//   int data;
//   Node? left;
//   Node? right;
//   Node({
//     required this.data,
//   });
// }

// class BinarySearchTree {
//   Node? root;
//   // insert to tree
//   void insertNode(int data) {
//     var currentNode = root;
//     if (currentNode == null) {
//       root = Node(data: data);
//       return;
//     }
//     while (true) {
//       if (data < currentNode!.data) {
//         if (currentNode.left == null) {
//           currentNode.left = Node(data: data);
//           break;
//         } else {
//           currentNode = currentNode.left;
//         }
//       } else {
//         if (currentNode.right == null) {
//           currentNode.right = Node(data: data);
//           break;
//         } else {
//           currentNode = currentNode.right;
//         }
//         // print(currentNode);
//       }
//     }
//   }
// // ##- Search -##

//   bool isContains(int data) {
//     var currentNode = root;
//     while (currentNode != null) {
//       if (data < currentNode.data) {
//         currentNode = currentNode.left;
//       } else if (data > currentNode.data) {
//         currentNode = currentNode.right;
//       } else {
//         return true;
//       }
//     }
//     return false;
//   }
// }

class Node {
  int data;
  Node? left;
  Node? right;
  Node({required this.data});
}

class BinarySearchTree {
  Node? root;
  // insert to tree
  void insertNode(int data) {
    Node? currentNode = root;
    if (currentNode == null) {
      root = Node(data: data);
      return;
    }
    while (true) {
      if (data < currentNode!.data) {
        if (currentNode.left == null) {
          currentNode.left = Node(data: data);
          break;
        } else {
          currentNode = currentNode.left;
        }
      } else {
        if (currentNode.right == null) {
          currentNode.right = Node(data: data);
          break;
        } else {
          currentNode = currentNode.right;
        }
      }
    }
  }

  // function to check is data contains in the tree or not
  bool isContains(int data) {
    Node? currentNode = root;
    while (currentNode != null) {
      if (data < currentNode.data) {
        currentNode = currentNode.left;
      } else if (data > currentNode.data) {
        currentNode = currentNode.right;
      } else {
        return true;
      }
    }
    return false;
  }

  // function to remove an element from tree (recursive method)
  // void removeFromTree(int data) {
  //   _removeHelper(data, root, null);
  // }

  // recursive helper function to run remove function
  // void _removeHelper(int data, Node? currentNode, Node? parrentNode) {
  //   while (currentNode != null) {
  //     if (data < currentNode.data) {
  //       parrentNode = currentNode;
  //       currentNode = currentNode.left;
  //     } else if (data > currentNode.data) {
  //       parrentNode = currentNode;
  //       currentNode = currentNode.right;
  //     } else {
  //       if (currentNode.left != null && currentNode.right != null) {
  //         currentNode.data = getMinValue(currentNode.right);
  //         _removeHelper(currentNode.data, currentNode.right, currentNode);
  //       } else {
  //         if (parrentNode == null) {
  //           if (currentNode.right == null) {
  //             root = currentNode.left;
  //           } else {
  //             root = currentNode.right;
  //           }
  //         } else {
  //           if (parrentNode.left == currentNode) {
  //             if (currentNode.right == null) {
  //               parrentNode.left = currentNode.left;
  //             } else {
  //               parrentNode.left = currentNode.right;
  //             }
  //           } else {
  //             if (currentNode.right == null) {
  //               parrentNode.right = currentNode.left;
  //             } else {
  //               parrentNode.right = currentNode.right;
  //             }
  //           }
  //         }
  //       }
  //       break;
  //     }
  //   }
  // }

//  get minimum value to replace removed value
  int getMinValue(Node? currentNode) {
    if (currentNode?.left == null) {
      return currentNode!.data;
    } else {
      return getMinValue(currentNode!.left);
    }
  }

  // ====>>> traverse methods
  void inOrder() {
    _inOrderHelper(root);
  }

  void preOrder() {
    _preOrderHelper(root);
  }

  void postOrder() {
    _postOrderaHelper(root);
  }

  void _inOrderHelper(Node? node) {
    if (node != null) {
      _inOrderHelper(node.left);
      print(node.data);
      _inOrderHelper(node.right);
    }
  }

  void _preOrderHelper(Node? node) {
    if (node != null) {
      print(node.data);
      _preOrderHelper(node.left);
      _preOrderHelper(node.right);
    }
  }

  void _postOrderaHelper(Node? node) {
    if (node != null) {
      _postOrderaHelper(node.left);
      _postOrderaHelper(node.right);
      print(node.data);
    }
  }
  // end of traverse methods <<=======//

  // print root value of tree
  // void printRoot() {
  //   print("===============");
  //   if (root == null) {
  //     print("List is empty");
  //   } else {
  //     print("Root : ${root!.data}");
  //   }
  //   print("===============");
  // }
}
