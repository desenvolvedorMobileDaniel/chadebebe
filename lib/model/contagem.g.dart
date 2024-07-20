// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'contagem.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$Contagem on _Contagem, Store {
  late final _$isRegisterAtom =
      Atom(name: '_Contagem.isRegister', context: context);

  @override
  bool get isRegister {
    _$isRegisterAtom.reportRead();
    return super.isRegister;
  }

  @override
  set isRegister(bool value) {
    _$isRegisterAtom.reportWrite(value, super.isRegister, () {
      super.isRegister = value;
    });
  }

  late final _$valorAtom = Atom(name: '_Contagem.valor', context: context);

  @override
  int get valor {
    _$valorAtom.reportRead();
    return super.valor;
  }

  @override
  set valor(int value) {
    _$valorAtom.reportWrite(value, super.valor, () {
      super.valor = value;
    });
  }

  late final _$restDivSegAtom =
      Atom(name: '_Contagem.restDivSeg', context: context);

  @override
  int get restDivSeg {
    _$restDivSegAtom.reportRead();
    return super.restDivSeg;
  }

  @override
  set restDivSeg(int value) {
    _$restDivSegAtom.reportWrite(value, super.restDivSeg, () {
      super.restDivSeg = value;
    });
  }

  late final _$restDivMinAtom =
      Atom(name: '_Contagem.restDivMin', context: context);

  @override
  int get restDivMin {
    _$restDivMinAtom.reportRead();
    return super.restDivMin;
  }

  @override
  set restDivMin(int value) {
    _$restDivMinAtom.reportWrite(value, super.restDivMin, () {
      super.restDivMin = value;
    });
  }

  late final _$restDivHoursAtom =
      Atom(name: '_Contagem.restDivHours', context: context);

  @override
  int get restDivHours {
    _$restDivHoursAtom.reportRead();
    return super.restDivHours;
  }

  @override
  set restDivHours(int value) {
    _$restDivHoursAtom.reportWrite(value, super.restDivHours, () {
      super.restDivHours = value;
    });
  }

  late final _$restDivAtom = Atom(name: '_Contagem.restDiv', context: context);

  @override
  dynamic get restDiv {
    _$restDivAtom.reportRead();
    return super.restDiv;
  }

  @override
  set restDiv(dynamic value) {
    _$restDivAtom.reportWrite(value, super.restDiv, () {
      super.restDiv = value;
    });
  }

  late final _$cronometroAsyncAction =
      AsyncAction('_Contagem.cronometro', context: context);

  @override
  Future cronometro() {
    return _$cronometroAsyncAction.run(() => super.cronometro());
  }

  late final _$_ContagemActionController =
      ActionController(name: '_Contagem', context: context);

  @override
  dynamic bottomNav(int index) {
    final _$actionInfo =
        _$_ContagemActionController.startAction(name: '_Contagem.bottomNav');
    try {
      return super.bottomNav(index);
    } finally {
      _$_ContagemActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
isRegister: ${isRegister},
valor: ${valor},
restDivSeg: ${restDivSeg},
restDivMin: ${restDivMin},
restDivHours: ${restDivHours},
restDiv: ${restDiv}
    ''';
  }
}
