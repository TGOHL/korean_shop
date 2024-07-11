part of 'reviewer_layout.dart';

class ReviewerView extends StatelessWidget {
  const ReviewerView({super.key});

  S get strings => S.current;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: ListView(
          children: [
            const ReviewerHeaderBar(),
            const ReviewerProfileSection(),
            SizedBox(height: 14.h),
            const ReviewerReviewsSection(),
          ],
        ),
      ),
    );
  }
}
