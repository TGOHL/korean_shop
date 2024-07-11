import 'package:bloc/bloc.dart';
import 'package:korean_shop/shared/models/app/product.dart';
import 'package:korean_shop/shared/models/app/review.dart';
import 'package:korean_shop/shared/models/app/reviewer.dart';
import 'package:korean_shop/shared/services/network/database.dart';
import 'package:meta/meta.dart';

part 'reviewer_state.dart';

class ReviewerCubit extends Cubit<ReviewerState> {
  late ReviewerModel reviewerModel;
  ReviewerCubit() : super(ReviewerInitial());

  bool get isGold => reviewerModel.id == DatabaseServices().reviewers.first.id;

  ReviewModel get latestReview => DatabaseServices().getReviewerLatestReview(reviewerModel.id);
  ProductModel get product => DatabaseServices().getProductById(latestReview.productId);
  void init(String id) {
    reviewerModel = DatabaseServices().reviewers.firstWhere((element) => element.id == id);
  }
}
