import 'package:equatable/equatable.dart';

abstract class Failure extends Equatable {
  final String? code;

  const Failure({this.code});

  @override
  List<Object?> get props => [code];
}

class ServerFailure extends Failure {
  const ServerFailure({super.code});
}

class NetworkFailure extends Failure {
  const NetworkFailure({super.code});
}

class OtherFailure extends Failure {
  const OtherFailure({super.code});
}
