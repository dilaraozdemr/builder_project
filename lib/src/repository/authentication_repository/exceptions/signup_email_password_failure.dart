class SignUpWithEmailAndPasswordFailure {
  final String message;

  const SignUpWithEmailAndPasswordFailure(
      [this.message = "An Unknown error occured."]);

  factory SignUpWithEmailAndPasswordFailure.code(String code) {
    switch (code) {
      case 'invalid-email':
        return SignUpWithEmailAndPasswordFailure(
            'Lütfen güçlü bir şifre giriniz.');
      case 'email-already-in-use':
        return SignUpWithEmailAndPasswordFailure(
            'E-mail formatını değiştiriniz.');
      case 'operation-not-allowed':
        return SignUpWithEmailAndPasswordFailure('Bu e-mail zaten  kayıtlı.');
      case 'user-disabled':
        return SignUpWithEmailAndPasswordFailure(
            'Bu kullanıcı devre dışı bırakıldı. Lütfen yardım için desteğe başvurunuz.');
      default:
        return const SignUpWithEmailAndPasswordFailure();
    }
  }
}
