class GetPackets {
  static void getPacks(int userNeed) {
    int smallPack = 2;
    int bigPack = 5;
    int mod = 0;
    if (userNeed < bigPack && userNeed % smallPack != 0 || userNeed < 0) {
      print('No packs Available');
      return;
    }
    if (userNeed % bigPack == 0) {
      print('${(userNeed ~/ bigPack).toInt()} packets of $bigPack kg');
      return;
    } else {
      mod = userNeed % bigPack;
      if (mod % smallPack == 0) {
        print('${(userNeed ~/ bigPack).toInt()} packets of $bigPack kg');
        print('${(mod ~/ smallPack).toInt()} packets of $smallPack kg');
        return;
      }
    }
    mod = userNeed % bigPack;
    if (mod == 3) {
      print('${((userNeed - 8) ~/ bigPack).toInt()} packets of $bigPack kg');
      print('4 packets of $smallPack kg');
      return;
    } else if (mod == 1) {
      print('${((userNeed - 6) ~/ bigPack).toInt()} packets of $bigPack kg');
      print('3 packets of $smallPack kg');
      return;
    } else {
      print('Invalid value');
    }
  }
}