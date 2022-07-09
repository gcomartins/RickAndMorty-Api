class OnBoardingController {
  double leftPosition;
  int animationDuration;
  OnBoardingController({
    required this.leftPosition,
    required this.animationDuration,
  });
  final String bgConstant = 'lib/assets/images/bgHome.jpg';

  void continueAnimation() {
    if (leftPosition == 0) {
      leftPosition = -1040;
    } else {
      leftPosition = 0;
    }
  }
}
