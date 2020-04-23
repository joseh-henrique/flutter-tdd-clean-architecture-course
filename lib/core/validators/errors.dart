import 'validator_failures.dart';

//Usar esses erros quando estiver em um lugar da aplicação que não seria possível
//o usuário executar determinada ação. Ex: pro usuário requisitar algo do Firestore
//ele precisa estar logado. Se o método de requisitar dados for chamado sem ele estar logado
//o NotAuthenticatedError deve ser enviado por throw (e logado no Crashlytics)
//O comportamento correto é que isso nunca aconteça, o usuário nunca poderia requisitar
//os dados sem estar logado (botão desabilitado, sem aparecer ou algo do tipo).

class NotAuthenticatedError extends Error {}

class UnexpectedValueError extends Error {
  final ValueFailure valueFailure;

  UnexpectedValueError(this.valueFailure);

  @override
  String toString() {
    const explanation =
        'Encountered a ValueFailure at an unrecoverable point. Terminating.';
    return Error.safeToString('$explanation Failure was: $valueFailure');
  }
}
