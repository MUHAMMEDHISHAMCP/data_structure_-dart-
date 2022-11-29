import 'dart:io';

class MinHeap {
  final List<int> _heap = [];

  MinHeap(List<int> array) {
    _buidMinHeap(array);
    _display();
  }

  void _buidMinHeap(List<int> array) {
    _heap.addAll(array);
    for (int i = _parent(_heap.length - 1); i >= 0; i--) {
      _shiftDown(i);
    }
  }

  void _shiftDown(int currentIndex) {
    int endIndex = _heap.length - 1;
    int leftIndex = _leftChild(currentIndex);
    while (leftIndex <= endIndex) {
      int rightIndex = _rightChild(currentIndex);
      int indexToShift;
      if (rightIndex <= leftIndex && _heap[rightIndex] < _heap[leftIndex]) {
        indexToShift = rightIndex;
      } else {
        indexToShift = leftIndex;
      }
      if (_heap[currentIndex] > _heap[indexToShift]) {
        int temp = _heap[currentIndex];
        _heap[currentIndex] = _heap[indexToShift];
        _heap[indexToShift] = temp;
        currentIndex = indexToShift;
        leftIndex = _leftChild(currentIndex);
      } else {
        return;
      }
    }
  }

  void _shiftUp(int currentIndex) {
    int parrentIndex = _parent(currentIndex);
    while (currentIndex > 0 && _heap[parrentIndex] > _heap[currentIndex]) {
      int temp = _heap[currentIndex];
      _heap[currentIndex] = _heap[parrentIndex];
      _heap[parrentIndex] = temp;
      currentIndex = parrentIndex;
      parrentIndex = _parent(currentIndex);
    }
  }

  int? peek() {
    if (_heap.isEmpty) {
      return null;
    }
    return _heap[0];
  }

  void remove() {
    if (_heap.isEmpty) {
      return;
    }
    _heap[0] = _heap[_heap.length - 1];
    _heap.removeAt(_heap.length - 1);
    _shiftDown(0);
  }

  void insert(int value) {
    _heap.add(value);
    _shiftUp(_heap.length - 1);
  }

  int _parent(int i) {
    return ((i - 1) ~/ 2).toInt();
  }

  int _leftChild(int i) {
    return ((i * 2) + 1).toInt();
  }

  int _rightChild(int i) {
    return ((i * 2) + 2).toInt();
  }

  void _display() {
    print('\n======== MinHeap =========\n');
    for (int i = 0; i < _heap.length; i++) {
      stdout.write("${_heap[i]} ");
    }
    print('\n\n=================\n');
  }
}