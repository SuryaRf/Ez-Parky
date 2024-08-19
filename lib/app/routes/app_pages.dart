import 'package:get/get.dart';

import '../data/models/place.dart';
import '../modules/booking/bindings/booking_binding.dart';
import '../modules/booking/views/booking_view.dart';
import '../modules/cariparkir/bindings/cariparkir_binding.dart';
import '../modules/cariparkir/views/cariparkir_view.dart';
import '../modules/choose_slot/bindings/choose_slot_binding.dart';
import '../modules/choose_slot/views/choose_slot_view.dart';
import '../modules/detail_floorplan/bindings/detail_floorplan_binding.dart';
import '../modules/detail_floorplan/views/detail_floorplan_view.dart';
import '../modules/detail_place/bindings/detail_place_binding.dart';
import '../modules/detail_place/views/detail_place_view.dart';
import '../modules/history/bindings/history_binding.dart';
import '../modules/history/views/history_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/lainnya/bindings/lainnya_binding.dart';
import '../modules/lainnya/views/lainnya_view.dart';
import '../modules/login/bindings/login_binding.dart';
import '../modules/login/views/login_view.dart';
import '../modules/navigation/bindings/navigation_binding.dart';
import '../modules/navigation/views/navigation_view.dart';
import '../modules/onboarding/bindings/onboarding_binding.dart';
import '../modules/onboarding/views/onboarding_view.dart';
import '../modules/onparking/bindings/onparking_binding.dart';
import '../modules/onparking/views/onparking_view.dart';
import '../modules/profile/bindings/profile_binding.dart';
import '../modules/profile/views/profile_view.dart';
import '../modules/scan_page/bindings/scan_page_binding.dart';
import '../modules/scan_page/views/scan_page_view.dart';
import '../modules/sekitarmu/bindings/sekitarmu_binding.dart';
import '../modules/sekitarmu/views/sekitarmu_view.dart';
import '../modules/setting/bindings/setting_binding.dart';
import '../modules/setting/views/setting_view.dart';
import '../modules/signup/bindings/signup_binding.dart';
import '../modules/signup/views/signup_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.ONBOARDING;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.LOGIN,
      page: () => const LoginView(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: _Paths.ONBOARDING,
      page: () => const OnboardingView(),
      binding: OnboardingBinding(),
    ),
    GetPage(
      name: _Paths.SIGNUP,
      page: () => const SignupView(),
      binding: SignupBinding(),
    ),
    GetPage(
      name: _Paths.NAVIGATION,
      page: () => NavigationView(),
      binding: NavigationBinding(),
    ),
    GetPage(
      name: _Paths.HISTORY,
      page: () => const HistoryView(),
      binding: HistoryBinding(),
    ),
    GetPage(
      name: _Paths.SETTING,
      page: () => const SettingView(),
      binding: SettingBinding(),
    ),
    GetPage(
      name: _Paths.PROFILE,
      page: () => const ProfileView(),
      binding: ProfileBinding(),
    ),
    GetPage(
      name: _Paths.DETAIL_PLACE,
      page: () {
        final Place place = Get.arguments
            as Place; // Ensure this matches with the passed argument
        return DetailPlaceView(place: place);
      },
      binding: DetailPlaceBinding(),
    ),
    GetPage(
      name: _Paths.DETAIL_FLOORPLAN,
      page: () => const DetailFloorplanView(),
      binding: DetailFloorplanBinding(),
    ),
    GetPage(
      name: _Paths.SCAN_PAGE,
      page: () => const ScanPageView(),
      binding: ScanPageBinding(),
    ),
    GetPage(
      name: _Paths.BOOKING,
      page: () => const BookingView(),
      binding: BookingBinding(),
    ),
    GetPage(
      name: _Paths.CARIPARKIR,
      page: () => const CariparkirView(),
      binding: CariparkirBinding(),
    ),
    GetPage(
      name: _Paths.SEKITARMU,
      page: () => const SekitarmuView(),
      binding: SekitarmuBinding(),
    ),
    GetPage(
      name: _Paths.ONPARKING,
      page: () => const OnparkingView(),
      binding: OnparkingBinding(),
    ),
    GetPage(
      name: _Paths.LAINNYA,
      page: () => const LainnyaView(),
      binding: LainnyaBinding(),
    ),
    GetPage(
      name: _Paths.CHOOSE_SLOT,
      page: () => const ChooseSlotView(),
      binding: ChooseSlotBinding(),
    ),
  ];
}
