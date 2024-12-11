class OnboardingContent {
  static final List<Map<String, String>> _onboardingContent = [
    {
      'title': 'Welcome to NodeX\nCrypto Wallet app',
      'description':
          'Discover the world of cryptocurrencies and\nmanage your assets securely and\nconveniently.',
      'buttonText': 'Next'
    },
    {
      'title': 'Top-notch Security and Safety!',
      'description':
          'With advanced encryption technology, your\ninformation and assets are protected with\nutmost security.',
      'buttonText': 'Next'
    },
    {
      'title': 'A Fantastic Experience with NodeX!',
      'description':
          'The NodeX Wallet is a custodial wallet\nallowing users to easily manage\ntheir crypto assets.',
      'buttonText': 'Get Started'
    },
  ];

  // Provides the onboarding content
  static List<Map<String, String>> get onboardingContent => _onboardingContent;
}
