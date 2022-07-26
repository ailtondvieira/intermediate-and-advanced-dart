void main() {
  MusicPlay musicPlay = MusicPlay();
  Mp3MusicPlay mp3musicPlay = Mp3MusicPlay();

  void tocar(MusicPlay musicPlay) {
    musicPlay.play('mp4');
  }

  // tocar(musicPlay);
  tocar(mp3musicPlay);
}

// SuperClasse
class MusicPlay {
  void play(fileExtension) {
    print('Tocando a música que tem extensão $fileExtension');
    // toca a música
  }
}

// SubClasse
class Mp3MusicPlay extends MusicPlay {
  void play(fileExtension) {
    if (fileExtension != 'mp3') {
      throw Exception();
    }
  }
}

// Retornando valores de tipos diferentes...
class Auth {
  dynamic checkCredentials(String login, String password) {
    // faz alguma coisa
    return true;
  }
}

class AuthApi extends Auth {
  dynamic checkCredentials(login, password) {
    // faz alguma coisa
    return {'auth': true, 'status': 200};
  }
}
