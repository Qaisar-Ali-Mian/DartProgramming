// mixin
void main() {
  Smartphone a1 = Smartphone("Samsung", "50 mp", 80);

  a1.showBrand();
  a1.takePhoto();
  a1.PlayMusic();
}

class Smartphone with CanTakePhoto, CanPlayMusic {
  String brand;

  Smartphone(this.brand, String cameraMP, int volume) {
    this.cameraMP = cameraMP;
    this.volume = volume;
  }

  void showBrand() {
    print("brand: $brand");
  }
}

mixin CanTakePhoto {
  String? cameraMP;

  void takePhoto() {
    print("camera mp: $cameraMP");
  }
}

mixin CanPlayMusic {
  int? volume;

  void PlayMusic() {
    print("Volume $volume");
  }
}
