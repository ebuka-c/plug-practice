import 'package:global_plug/utilities/imports/general_import.dart';

class CustomEndDrawer extends StatefulWidget {
  const CustomEndDrawer({super.key, required this.onTap});

  final Function() onTap;

  @override
  State<CustomEndDrawer> createState() => _CustomEndDrawerState();
}

class _CustomEndDrawerState extends State<CustomEndDrawer> {
  List<String> applicationScreens = [
    AppRoutes.nigerianPersonalInfo,
    AppRoutes.nigeriaVisaHome,
    AppRoutes.schengenVisaHome,
    AppRoutes.usaVisaHome,
    AppRoutes.canadaVisaHome,
  ];

  @override
  Widget build(BuildContext context) {
    int selectedTile = 0;

    return Container(
        //parent
        width: MediaQuery.of(context).size.width * 0.695,
        height: 380.0.h,
        margin: EdgeInsets.only(bottom: 65.0.h),
        child: Stack(children: [
          Align(
              alignment: Alignment.centerRight,
              child: Container(
                  width: MediaQuery.of(context).size.width * 0.65,
                  height: 380.0.h,
                  padding: EdgeInsets.fromLTRB(25.0.w, 35.0.h, 15.0.w, 0.0.h),
                  decoration: const BoxDecoration(
                      color: AppColors.deepPrimary,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(11),
                          bottomLeft: Radius.circular(11))),
                  child: ListView.separated(
                      physics: const NeverScrollableScrollPhysics(),
                      itemBuilder: (context, index) {
                        return GestureDetector(
                            onTap: () {
                              drawerOpen.currentState!.closeEndDrawer();
                              Get.toNamed(applicationScreens[index]);
                              setState(() {
                                selectedTile = index;
                              });
                            },
                            child: Container(
                                width: double.infinity,
                                height: 34.0.h,
                                padding: EdgeInsets.fromLTRB(
                                    25.0.w, 6.0.h, 0, 6.0.h),
                                decoration: BoxDecoration(
                                    color: selectedTile == index
                                        ? AppColors.colorWhite
                                        : null,
                                    borderRadius: BorderRadius.circular(22)),
                                child: Text(
                                    drawerTiles[index]['title'].toString(),
                                    style: bodyLarge.copyWith(
                                        fontWeight: FontWeight.w500,
                                        color: selectedTile == index
                                            ? AppColors.textColor2
                                            : AppColors.colorWhite))));
                      },
                      separatorBuilder: (c, i) => SizedBox(height: 20.1.h),
                      itemCount: drawerTiles.length))),
          Positioned(
              top: 15,
              child: GestureDetector(
                  onTap: widget.onTap,
                  child: Container(
                      height: 39,
                      width: 39,
                      decoration: const BoxDecoration(
                          shape: BoxShape.circle, color: AppColors.deepPrimary),
                      child: const Center(
                          child: Icon(Icons.arrow_forward_ios_rounded,
                              color: AppColors.colorWhite, size: 20)))))
        ]));
  }
}

List<Map<String, String>> drawerTiles = [
  {'title': 'Nigeria Passport (UK)'},
  {'title': 'Nigeria Visa (UK)'},
  {'title': 'Schengen Visa'},
  {'title': 'USA Visa'},
  {'title': 'Canada Visa'},
];
