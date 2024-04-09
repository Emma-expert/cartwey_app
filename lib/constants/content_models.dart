class OnboardingContent {
  String image;
  String title;
  String description;

  OnboardingContent(
      {required this.image, required this.title, required this.description});
}

List<OnboardingContent> contents = [
  OnboardingContent(
      image: 'images/firstonboarding.svg',
      title: 'Scan Product',
      description: "Effortlessly add items to your cart by scanning their barcodes. Simply point your camera and confirm each product to proceed."),
  OnboardingContent(
      title: 'Payment',
      image: 'images/secondonboarding.svg',
      description: "Securely complete your purchase Review your scanned items, choose your preferred payment method."),
  OnboardingContent(
      title: 'Bagging',
      image: 'images/thirdonboarding.svg',
      description: "Finish up your shopping experience by "
          "bagging your items. Confirm your payment,"
          "and you're ready to go."),
];
