import 'package:global_plug/utilities/imports/general_import.dart';

class RoutePages {
  static final List<GetPage> routes = [
    // splash screen
    GetPage(
      name: AppRoutes.splashScreen,
      page: () => const SplashScreen(),
      transition: Transition.fadeIn,
      transitionDuration: const Duration(seconds: 2),
    ),
    // onboarding
    GetPage(
      name: AppRoutes.onboardingScreen,
      page: () => OnboardingScreen(),
      transition: Transition.fadeIn,
    ),
    GetPage(
      name: AppRoutes.loginOrSignup,
      page: () => const LoginOrSignup(),
    ),
    // sign in
    GetPage(
      name: AppRoutes.loginScreen,
      page: () => LoginScreen(),
    ),
    GetPage(
      name: AppRoutes.signUpScreen,
      page: () => SignUpScreen(),
    ),
    GetPage(
      name: AppRoutes.forgotPswdScreen,
      page: () => const ForgotPassword(),
    ),
    GetPage(
      name: AppRoutes.authOtpScreen,
      page: () => const AuthOtpScreen(),
    ),
    GetPage(
      name: AppRoutes.resetPassword,
      page: () => const ResetPassword(),
    ),
    GetPage(
      name: AppRoutes.pswdSuccessfullyChanged,
      page: () => const PswdSuccessfullyChanged(),
    ),
    //complete profile
    GetPage(
      name: AppRoutes.completeUrProfile,
      page: () => const CompleteUrProfile(),
    ),

    //passport app
    GetPage(
      name: AppRoutes.nigerianPersonalInfo,
      page: () => const PersonalInfo(),
    ),
    GetPage(
      name: AppRoutes.ukContactInfo,
      page: () => const NgPassUkInfo(),
    ),
    GetPage(
      name: AppRoutes.ngContactInfo,
      page: () => const NigeriaContactInfo(),
    ),
    GetPage(
      name: AppRoutes.nextOfKinInfo,
      page: () => const NextOfKinInfo(),
    ),
    GetPage(
      name: AppRoutes.reviewAndSubmit,
      page: () => const ReviewAndSubmit(),
    ),
    GetPage(
      name: AppRoutes.responseSubmitted,
      page: () => const ResponseSubmitted(),
    ),

    //visa app
    GetPage(name: AppRoutes.ngVisaUkInfo, page: () => const NgVisaUkInfo()),
    GetPage(
        name: AppRoutes.ngVisaTravelInfo, page: () => const NgVisaTravelInfo()),
    GetPage(
        name: AppRoutes.ngVisaContactInNig,
        page: () => const NgvisaContactInNig()),
    GetPage(
        name: AppRoutes.ngVisaReviewSubmit,
        page: () => const NgvisaReviewSubmit()),
    GetPage(
        name: AppRoutes.schenVisaReviewSubmit,
        page: () => const SchenVisaReviewSubmit()),
    //REVIEW AND PAYMENTS
    GetPage(
      name: AppRoutes.paymentReview,
      page: () => const PaymentReview(),
    ),
    //REVIEW AND PAYMENTS
    GetPage(name: AppRoutes.paymentScreen, page: () => const PaymentScreen()),
    GetPage(name: AppRoutes.paymentSuccess, page: () => const PaymentSuccess()),
    GetPage(name: AppRoutes.paymentReceipt, page: () => const PaymentReceipt()),

    //APPLICATIONS-SECTION
    GetPage(
        name: AppRoutes.applicationsDashboard,
        page: () => const ApplicationsDashboard()),

    //empty-states
    GetPage(
        name: AppRoutes.upcomingAppointmentsEmpty,
        page: () => const UpcomingAppointmentsEmpty()),
    GetPage(
        name: AppRoutes.completedApplicationsEmpty,
        page: () => const CompletedApplicationsEmpty()),
    GetPage(
        name: AppRoutes.paymentHistoryEmpty,
        page: () => const PaymentHistoryEmpty()),

    //non-empty states
    GetPage(
        name: AppRoutes.upcomingAppointments,
        page: () => const UpcomingAppointments()),
    GetPage(
        name: AppRoutes.completedApplications,
        page: () => const CompletedApplications()),
    GetPage(name: AppRoutes.paymentHistory, page: () => const PaymentHistory()),

    //
    GetPage(
        name: AppRoutes.upcomingAppointmentDetails,
        page: () => const UpcomingAppointmentDetails()),

    //NOTIFICATIONS
    GetPage(
        name: AppRoutes.notificationsScreen,
        page: () => const NotificationsScreen()),
    GetPage(
        name: AppRoutes.notificationDetails,
        page: () => const NotificationDetails()),
    GetPage(
        name: AppRoutes.uploadBiometricSlip,
        page: () => const UploadBiometricSlip()),
    GetPage(
        name: AppRoutes.biometricSuccessfulUpload,
        page: () => const BiometricSuccessfulUpload()),

    //SUPPORT
    GetPage(name: AppRoutes.faqScreen, page: () => const FAQScreen()),
    GetPage(name: AppRoutes.chatSupport, page: () => ChatSupport()),

    //PROFILE
    GetPage(name: AppRoutes.settingsScreen, page: () => const SettingsScreen()),
    GetPage(
        name: AppRoutes.myAccountSettings,
        page: () => const MyAccountSettings()),
    GetPage(name: AppRoutes.accSecurity, page: () => const AccSecurity()),

    //
    GetPage(
        name: AppRoutes.nigeriaVisaHome,
        page: () => const NgVisaApplicationHome()),
    GetPage(name: AppRoutes.canadaVisaHome, page: () => const CanadaVisaApp()),
    GetPage(
        name: AppRoutes.schengenVisaHome, page: () => const SchengenVisaApp()),
    GetPage(name: AppRoutes.usaVisaHome, page: () => const USAVisaApp()),

    //review
    GetPage(
        name: AppRoutes.usaReviewSubmit, page: () => const USAReviewSubmit()),
    GetPage(name: AppRoutes.caReviewSubmit, page: () => const CAReviewSubmit()),
  ];
}
