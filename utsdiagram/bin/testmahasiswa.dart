import 'dart:io';
import 'package:utsdiagram/biodatamahasiswa.dart';

void main(List<String> args) {
  Mahasiswa mahasiswa;
  var list_mahasiswa = [];
  String jawab;
  var ulang = true;

  print('Input data mahasiswa');
  mahasiswa = Mahasiswa();

  while (ulang) {
    stdout.write('NRP: ');
    mahasiswa.nrp = stdin.readLineSync();
    stdout.write('Nama: ');
    mahasiswa.nama = stdin.readLineSync();
    print('Pilihan Jurusan');
    print('1 : Rekayasa Perangkat Lunak');
    print('2 :Teknik Iformatika');
    print('3 : ABI');

    mahasiswa.nilai_jurusan = int.tryParse(stdin.readLineSync());

    list_mahasiswa.add(mahasiswa.toMap());

    stdout.write('Berhenti input data? Y|T : ');
    jawab = stdin.readLineSync();
    (jawab == 'Y') ? ulang = false : ulang = true;
  }

  print('============================================================');
  print('NRP\t\t NAMA\t\t JURUSAN');
  print('============================================================');
  for (var mhs in list_mahasiswa) {
    print('${mhs['nrp']}\t\t ${mhs['nama']}\t\t ${mhs['jurusan']}');
  }
  print('============================================================');
}
