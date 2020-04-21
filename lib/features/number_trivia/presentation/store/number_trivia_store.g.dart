// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'number_trivia_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$NumberTriviaStore on _NumberTriviaStoreBase, Store {
  Computed<bool> _$emptyStateComputed;

  @override
  bool get emptyState =>
      (_$emptyStateComputed ??= Computed<bool>(() => super.emptyState)).value;
  Computed<bool> _$errorStateComputed;

  @override
  bool get errorState =>
      (_$errorStateComputed ??= Computed<bool>(() => super.errorState)).value;

  final _$triviaAtom = Atom(name: '_NumberTriviaStoreBase.trivia');

  @override
  NumberTrivia get trivia {
    _$triviaAtom.context.enforceReadPolicy(_$triviaAtom);
    _$triviaAtom.reportObserved();
    return super.trivia;
  }

  @override
  set trivia(NumberTrivia value) {
    _$triviaAtom.context.conditionallyRunInAction(() {
      super.trivia = value;
      _$triviaAtom.reportChanged();
    }, _$triviaAtom, name: '${_$triviaAtom.name}_set');
  }

  final _$errorMessageAtom = Atom(name: '_NumberTriviaStoreBase.errorMessage');

  @override
  String get errorMessage {
    _$errorMessageAtom.context.enforceReadPolicy(_$errorMessageAtom);
    _$errorMessageAtom.reportObserved();
    return super.errorMessage;
  }

  @override
  set errorMessage(String value) {
    _$errorMessageAtom.context.conditionallyRunInAction(() {
      super.errorMessage = value;
      _$errorMessageAtom.reportChanged();
    }, _$errorMessageAtom, name: '${_$errorMessageAtom.name}_set');
  }

  final _$loadingStateAtom = Atom(name: '_NumberTriviaStoreBase.loadingState');

  @override
  bool get loadingState {
    _$loadingStateAtom.context.enforceReadPolicy(_$loadingStateAtom);
    _$loadingStateAtom.reportObserved();
    return super.loadingState;
  }

  @override
  set loadingState(bool value) {
    _$loadingStateAtom.context.conditionallyRunInAction(() {
      super.loadingState = value;
      _$loadingStateAtom.reportChanged();
    }, _$loadingStateAtom, name: '${_$loadingStateAtom.name}_set');
  }

  final _$getErrorOrUseCaseAsyncAction = AsyncAction('getErrorOrUseCase');

  @override
  Future<void> getErrorOrUseCase(NumberTriviaEvent event) {
    return _$getErrorOrUseCaseAsyncAction
        .run(() => super.getErrorOrUseCase(event));
  }

  final _$getConcreteNumberTriviaOrErrorAsyncAction =
      AsyncAction('getConcreteNumberTriviaOrError');

  @override
  Future<void> getConcreteNumberTriviaOrError(
      GetTriviaForConcreteNumber event) {
    return _$getConcreteNumberTriviaOrErrorAsyncAction
        .run(() => super.getConcreteNumberTriviaOrError(event));
  }

  final _$_NumberTriviaStoreBaseActionController =
      ActionController(name: '_NumberTriviaStoreBase');

  @override
  void _clearErrorMessage() {
    final _$actionInfo = _$_NumberTriviaStoreBaseActionController.startAction();
    try {
      return super._clearErrorMessage();
    } finally {
      _$_NumberTriviaStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void _startLoading() {
    final _$actionInfo = _$_NumberTriviaStoreBaseActionController.startAction();
    try {
      return super._startLoading();
    } finally {
      _$_NumberTriviaStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void _finishLoading() {
    final _$actionInfo = _$_NumberTriviaStoreBaseActionController.startAction();
    try {
      return super._finishLoading();
    } finally {
      _$_NumberTriviaStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void _eitherLoadedOrErrorState(
      Either<Failure, NumberTrivia> failureOrTrivia) {
    final _$actionInfo = _$_NumberTriviaStoreBaseActionController.startAction();
    try {
      return super._eitherLoadedOrErrorState(failureOrTrivia);
    } finally {
      _$_NumberTriviaStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    final string =
        'trivia: ${trivia.toString()},errorMessage: ${errorMessage.toString()},loadingState: ${loadingState.toString()},emptyState: ${emptyState.toString()},errorState: ${errorState.toString()}';
    return '{$string}';
  }
}
