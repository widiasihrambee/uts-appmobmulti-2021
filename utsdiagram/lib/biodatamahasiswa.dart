import 'package:utsdiagram/ketuahima.dart';

class Mahasiswa extends KetuaHima {
  String _nrp, _jurusan;
  int _nilai_jurusan;

  set nilai_jurusan(int nilai_jurusan) {
    _nilai_jurusan = nilai_jurusan;
  }

  set nrp(String nrp) {
    _nrp = nrp;
  }

  String get_jurusan(prodi) {
    if (prodi >= 1) {
      _jurusan = 'Rekayasa Perangkat Lunak';
    }
    if (prodi >= 2) {
      _jurusan = 'Teknik Informatika';
    }
    if (prodi >= 3) {
      _jurusan = 'ABI';
    }
    return _jurusan;
  }

  Map<String, dynamic> toMap() {
    return {
      'nrp': _nrp,
      'nama': nama,
      'nilai_jurusan': _nilai_jurusan,
      'jurusan': get_jurusan(_nilai_jurusan),
    };
  }
}
