part of 'reviewer_cubit.dart';

@immutable
sealed class ReviewerState {}

final class ReviewerInitial extends ReviewerState {}

final class ReviewerErrorState extends ReviewerState {
  final Exception error;

  ReviewerErrorState(this.error);
}
