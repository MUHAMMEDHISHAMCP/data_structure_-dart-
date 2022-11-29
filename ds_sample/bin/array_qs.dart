class ArrayProblems {
  // ##-- clock wise --##

  void cRight() {
    var arr = [1, 2, 3, 4];
    var count = 2;

    for (var i = 0; i < count; i++) {
      var temp = arr[arr.length - 1];

      for (var j = arr.length - 1; j > 0; j--) {
        arr[j] = arr[j - 1];
      }
      arr[0] = temp;
    }
    print(arr);
  }

//  ##-- Anticlock wise --##

  void cLeft() {
    var arr = [1, 2, 3, 4];
    var count = 1;
    for (var i = 0; i < count; i++) {
      var temp = arr[0];

      for (var j = 0; j < arr.length - 1; j++) {
        arr[j] = arr[j + 1];
      }
      arr[arr.length - 1] = temp;
    }
    print(arr);
  }

//  ##-- first dup --##

  void dup() {
    var arr = [1, 2, 6, 5, 7, 5, 9, 6];

    for (var i = 1; i < arr.length; i++) {
      for (var j = i - 1; j >= 0; j--) {
        if (arr[i] == arr[j]) {
          print(arr[i]);
          return;
        }
      }
    }
  }

//  ##-- count --##

  void arrayCount() {
    var arr = <String>[
      'A',
      'Z',
      'A',
      'A',
      'D',
      'B',
      'A',
      'A',
      'B',
      'B',
      'C',
      'A',
      'B',
      'C',
      'A',
      'A',
      'A',
      'B',
      'B',
      'C',
      'A'
    ];
    var temp = List.generate(arr.length, (index) => -1);
    for (var i = 0; i < arr.length; i++) {
      var count = 0;

      for (var j = 0; j < arr.length; j++) {
        if (arr[i] == arr[j]) {
          count++;
          if (count > 0) {
            temp[j] = 0;
          }
        }
      }
      if (temp[i] != 0) {
        print(arr[i] + count.toString());
      }
    }
  }
}
