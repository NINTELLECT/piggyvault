import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';
import 'package:piggy_flutter/models/models.dart';

// TODO: need to re-visit filters handling in states
abstract class AccountTransactionsState extends Equatable {
  final GetTransactionsInput filters;

  const AccountTransactionsState(this.filters);
  @override
  List<Object> get props => [];
}

class AccountTransactionsEmpty extends AccountTransactionsState {
  AccountTransactionsEmpty(GetTransactionsInput filters) : super(filters);
}

class AccountTransactionsLoading extends AccountTransactionsState {
  AccountTransactionsLoading(GetTransactionsInput filters) : super(filters);
}

class AccountTransactionsLoaded extends AccountTransactionsState {
  final TransactionsResult result;
  final GetTransactionsInput filters;

  AccountTransactionsLoaded({@required this.result, @required this.filters})
      : super(filters);
}

class AccountTransactionsError extends AccountTransactionsState {
  AccountTransactionsError(GetTransactionsInput filters) : super(filters);
}
