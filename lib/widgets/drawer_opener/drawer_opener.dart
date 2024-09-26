import 'package:global_plug/utilities/imports/general_import.dart';

class DrawerOpener extends StatelessWidget {
  const DrawerOpener({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(top: 210.0.h),
        child: Row(mainAxisAlignment: MainAxisAlignment.end, children: [
          Positioned(
              top: 200.0.h,
              child: GestureDetector(
                  onTap: () {
                    drawerOpen.currentState!.openEndDrawer();
                    // ngVisaDrawerOpen.currentState!.openEndDrawer();
                    // canadaVisaDrawerOpen.currentState!.openEndDrawer();
                    // usaVisaDrawerOpen.currentState!.openEndDrawer();
                    // schengenVisaDrawerOpen.currentState!.openEndDrawer();
                  },
                  child: Container(
                      width: 47.7.w,
                      height: 61.2.h,
                      decoration: const BoxDecoration(
                          color: AppColors.deepPrimary,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(11),
                              bottomLeft: Radius.circular(11))),
                      child: Center(
                          child: SvgPicture.asset(AppImages.stashApply,
                              width: 30, height: 30)))))
        ]));
  }
}
