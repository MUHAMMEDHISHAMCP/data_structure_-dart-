class Sorting {
  List<int> selecton(List<int> list) {
  for (var i = 0; i < list.length; i++) {
    var sml = i;
    for (var j = i + 1; j < list.length; j++) {
      if (list[j] < list[i]) {
        sml = j;
      }
    }
    final temp = list[i];
    list[i] = list[sml];
    list[sml] = temp;
  }
  return list;
}

// List<int> buble(List<int> arr) {
//   for (var i = 0; i < arr.length - 1; i++) {
//     for (var j = 0; j < arr.length - i - 1; j++) {
//       if (arr[j] > arr[j + 1]) {
//         final temp = arr[j];
//         arr[j] = arr[j + 1];
//         arr[j + 1] = temp;
//       }
//     }
//   }
//   return arr;
// }

List<int> insertion(List<int> arr) {
  for (var i = 1; i < arr.length; i++) {
    var crnt = arr[i];
    var j = i - 1;

    while (j >= 0 && arr[j] > crnt) {
      arr[j + 1] = arr[j];
      j--;
    }
    arr[j + 1] = crnt;
  }
  return arr;
}

// void task() {
//   var arr = [1, 2, 4, 4, 5];
//   var arr2 = [9, 7, 6, 8, 10];
//   var sum = 0;
//   var sum1 = 0;

//   for (var i = 0; i < arr.length; i++) {
//     sum1 = sum1 + arr[i];
//     for (var j = 0+i; j <= i; j++) {
//       sum = sum + arr2[j];
//     }
//   }

//   var res = sum + sum1;
//   print(res);

// var newList = arr+arr2;

// final removeDuplicate = newList.toSet().toList();

// print(removeDuplicate);

// // for(var a = 0 ; a < newList.length ;a ++){
// // for (var s = a+1; s < newList.length -1; s++) {
// //   if (newList[a] == newList[s]) {
// //     newList[s] = newList[s+1];
// //   }
// // }
// // }
// // print(newList);
// }

List<int> buble(List<int> arr) {
  var count = 0;
  for (var i = 0; i < arr.length - 1; i++) {
    for (var j = 0; j < arr.length - 1; j++) {
      if (arr[j] > arr[j + 1]) {
        final temp = arr[j];
        arr[j] = arr[j + 1];
        arr[j + 1] = temp;
        count++;
      }
    }
  }
  print(count);
  return arr;
}

void main(List<String> args) {
  print(buble([6, 5, 1, 3, 2, 4]));
}

}