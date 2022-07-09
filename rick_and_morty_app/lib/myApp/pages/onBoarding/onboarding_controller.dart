class OnBoardingController {
  bool isAnimationStarted;
  double leftPosition;
  int animationDuration;
  OnBoardingController({
    required this.leftPosition,
    required this.animationDuration,
    required this.isAnimationStarted,
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
