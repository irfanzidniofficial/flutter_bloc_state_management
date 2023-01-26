import 'package:equatable/equatable.dart';

void main() {
  Orang orang1 = Orang('joni', 24);
  Orang orang2 = Orang('joni', 24);

  print(orang1.toString());
  print(orang2.toString());
}

class Orang extends Equatable {
  String name;
  int umur;

  Orang(this.name, this.umur);

  @override
  List<Object?> get props => [name, umur];
}
