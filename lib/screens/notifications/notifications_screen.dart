import 'package:global_plug/utilities/imports/general_import.dart';

class NotificationsScreen extends StatelessWidget {
  const NotificationsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        initialIndex: 0,
        length: 3,
        child: Scaffold(
            appBar: AppBar(
                backgroundColor: AppColors.colorWhite,
                surfaceTintColor: AppColors.colorWhite,
                foregroundColor: AppColors.textColor3,
                title: Text('Notifications',
                    style: title19.copyWith(
                        fontWeight: FontWeight.w600,
                        color: AppColors.textColor3)),
                centerTitle: true,
                elevation: 5,
                actions: [
                  IconButton(
                      onPressed: () {}, icon: const Icon(Icons.more_vert))
                ],
                bottom: PreferredSize(
                    preferredSize: const Size.fromHeight(kToolbarHeight),
                    child: Align(
                        alignment: Alignment.bottomCenter,
                        child: SizedBox(
                            width: MediaQuery.of(context).size.width / 1.5,
                            child: TabBar(
                                dividerColor: AppColors.transparent,
                                indicatorPadding:
                                    EdgeInsets.symmetric(horizontal: 30.0.w),
                                indicatorSize: TabBarIndicatorSize.tab,
                                indicatorColor: AppColors.deepPrimary,
                                unselectedLabelColor: AppColors.unselectedLabel,
                                labelColor: AppColors.primaryColor,
                                labelStyle: bodyLarge.copyWith(
                                    fontWeight: FontWeight.w500),
                                unselectedLabelStyle: bodyLarge.copyWith(
                                    fontWeight: FontWeight.w500),
                                tabs: const [
                                  Tab(text: 'All'),
                                  Tab(text: 'Unread'),
                                  Tab(text: 'Read')
                                ]))))),
            body: Stack(children: [
              const TabBarView(children: [
                AllNotifications(),
                SizedBox(
                  child: Center(child: Text('Unread')),
                ),
                SizedBox(
                  child: Center(child: Text('Read')),
                )
              ]),
              Align(
                  alignment: Alignment.bottomCenter,
                  child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 21.0.w),
                      child: navbarNotificationsState))
            ])));
  }
}
