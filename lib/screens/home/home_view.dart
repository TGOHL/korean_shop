part of 'home_layout.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  S get strings => S.current;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: ListView(
          children: [
            const HomeSearchBar(),
            const HomeCarouselSlider(),
            const HomeTopProducts(),
            SizedBox(height: 14.h),
            const HomeTopReviewers(),
            const HomeFooter(),
          ],
        ),
      ),
    );
  }
}
