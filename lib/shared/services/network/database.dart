import 'package:korean_shop/generated/l10n.dart';
import 'package:korean_shop/shared/config/assets.dart';
import 'package:korean_shop/shared/models/app/product.dart';
import 'package:korean_shop/shared/models/app/review.dart';
import 'package:korean_shop/shared/models/app/reviewer.dart';

class DatabaseServices {
  S get strings => S.current;

  // Holds only Top 3 Products
  List<ProductModel> get topProducts => products.take(3).toList();

  // Holds All Products
  List<ProductModel> get products => [
        ProductModel(
          id: '1',
          title: strings.prod_1_title,
          features: [
            strings.prod_1_feature_1,
            strings.prod_1_feature_2,
          ],
          ratesCount: 216,
          rateRatio: 4.89,
          tags: [
            strings.prod_1_tag_1,
            strings.prod_1_tag_2,
          ],
          imageUrl: AppAssets.prodImage1,
        ),
        ProductModel(
          id: '2',
          title: strings.prod_2_title,
          features: [
            strings.prod_2_feature_1,
            strings.prod_2_feature_2,
          ],
          ratesCount: 136,
          rateRatio: 4.36,
          tags: [
            strings.prod_2_tag_1,
            strings.prod_2_tag_2,
          ],
          imageUrl: AppAssets.prodImage2,
        ),
        ProductModel(
          id: '3',
          title: strings.prod_3_title,
          features: [
            strings.prod_3_feature_1,
            strings.prod_3_feature_2,
          ],
          ratesCount: 98,
          rateRatio: 3.98,
          tags: [
            strings.prod_3_tag_1,
            strings.prod_3_tag_2,
          ],
          imageUrl: AppAssets.prodImage3,
        ),
        ProductModel(
          id: '4',
          title: strings.prod_4_title,
          features: [],
          ratesCount: 17,
          rateRatio: 4.07,
          tags: [],
          imageUrl: AppAssets.prodImage4,
        ),
      ];

  // Holds All Reviewers - Users -
  List<ReviewerModel> get reviewers => [
        ReviewerModel(
          id: '1',
          name: 'Name01',
          desc: S.current.user_desc,
          imageUrl: AppAssets.userImage1,
        ),
        ReviewerModel(
          id: '2',
          name: 'Name02',
          desc: S.current.user_desc,
          imageUrl: AppAssets.userImage2,
        ),
        ReviewerModel(
          id: '3',
          name: 'Name03',
          desc: S.current.user_desc,
          imageUrl: AppAssets.userImage3,
        ),
        ReviewerModel(
          id: '4',
          name: 'Name04',
          desc: S.current.user_desc,
          imageUrl: AppAssets.userImage4,
        ),
        ReviewerModel(
          id: '5',
          name: 'Name05',
          desc: S.current.user_desc,
          imageUrl: AppAssets.userImage5,
        ),
        ReviewerModel(
          id: '6',
          name: 'Name06',
          desc: S.current.user_desc,
          imageUrl: AppAssets.userImage6,
        ),
        ReviewerModel(
          id: '7',
          name: 'Name07',
          desc: S.current.user_desc,
          imageUrl: AppAssets.userImage7,
        ),
        ReviewerModel(
          id: '8',
          name: 'Name08',
          desc: S.current.user_desc,
          imageUrl: AppAssets.userImage8,
        ),
        ReviewerModel(
          id: '9',
          name: 'Name09',
          desc: S.current.user_desc,
          imageUrl: AppAssets.userImage9,
        ),
        ReviewerModel(
          id: '10',
          name: 'Name10',
          desc: S.current.user_desc,
          imageUrl: AppAssets.userImage10,
        ),
      ];

  // Holds all reviews that ever done
  // NOTE: for protoype we have only uses 1 review
  List<ReviewModel> get reviews => [
        ReviewModel(
          id: 'a4',
          userId: '1',
          productId: '4',
          rate: 4,
          date: DateTime(2022, 11, 9),
          commments: [
            strings.prod_4_com_1,
            strings.prod_4_com_2,
            strings.prod_4_com_3,
            strings.prod_4_com_4,
            strings.prod_4_com_5,
          ],
          pro: strings.prod_4_pro,
          con: strings.prod_4_con,
          imagesUrls: [
            AppAssets.reviewA1Prod4Image1,
            AppAssets.reviewA1Prod4Image2,
            AppAssets.reviewA1Prod4Image3,
          ],
        ),
      ];

  ReviewModel getReviewerLatestReview(String uid) {
    return reviews.firstWhere(
      (element) => element.userId == uid,
      orElse: () => reviews.first,
    );
  }

  ProductModel getProductById(String id) {
    return products.firstWhere(
      (element) => element.id == id,
      orElse: () => products.first,
    );
  }
}
