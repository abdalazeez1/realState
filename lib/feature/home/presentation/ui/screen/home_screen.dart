import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:realstate/common/app_widget/app_text_field.dart';
import 'package:realstate/common/helper/dependencie_injection.dart';
import 'package:realstate/common/network/exceptions/exceptions.dart';
import 'package:realstate/common/network/page_state/page_state.dart';
import 'package:realstate/common/theme/typography.dart';
import 'package:realstate/feature/home/infrastructure/model/category_model/category.dart';
import 'package:realstate/feature/home/infrastructure/model/post_model/post_model.dart';
import 'package:realstate/feature/home/presentation/state/home_bloc.dart';

import '../../../../../common/app_widget/loading_widget.dart';
import '../widget/card_home.dart';
import '../widget/custome_chip.dart';

class HomeScreen extends StatefulWidget {
  static const path = 'home';
  static const name = 'home';

  static Widget pageBuilder(BuildContext context, GoRouterState state) {
    return const HomeScreen();
  }

  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late final HomeBloc homeBloc;

  @override
  void initState() {
    homeBloc = getIt<HomeBloc>();
    homeBloc.add(GetAllPostHome());
    homeBloc.add(GetAllCategoriesHome());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: homeBloc,
      child: SafeArea(
        child: Scaffold(
            body: RefreshIndicator(
          onRefresh: () async {
            homeBloc.add(GetAllPostHome());
            homeBloc.add(GetAllCategoriesHome());
          },
          child: CustomScrollView(
            slivers: [
              SliverAppBar(
                backgroundColor: context.colorScheme.background,
                // surfaceTintColor: context.colorScheme.onPrimary,
                toolbarHeight: 90.h,
                pinned: true,
                title: Padding(
                  padding: REdgeInsetsDirectional.only(bottom: 10, top: 20, end: 10, start: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Find Your \nBest Place to Stay',
                          style: context.textTheme.headlineSmall!.xb.copyWith(color: context.colorScheme.primary)),
                      Icon(Icons.notifications_none_outlined, color: context.colorScheme.primary, size: 30.r),
                    ],
                  ),
                ),
                bottom: PreferredSize(
                    preferredSize: Size.fromHeight(60.h),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: Material(
                        elevation: 5,
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.r)),
                        child: AppTextField(
                          borderColor: context.colorScheme.background,
                          filled: false,
                          prefixIcon: IconButton(
                            icon: Icon(
                              Icons.search,
                              color: Colors.grey.shade300,
                            ),
                            onPressed: () {},
                          ),
                          suffixIcon: IconButton(
                            icon: Icon(
                              Icons.tune,
                              color: context.colorScheme.primary,
                            ),
                            onPressed: () {},
                          ),
                          hintText: "search...",
                          hintTextStyle: TextStyle(color: Colors.grey.shade300),
                        ),
                      ),
                    )),
              ),
              SliverAppBar(
                backgroundColor: context.colorScheme.background,
                title: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                  child: Text(
                    'Categories',
                    style: context.textTheme.titleSmall!.xb,
                  ),
                ),
                centerTitle: false,
                titleSpacing: 0,
                pinned: false,
                snap: true,
                floating: true,
                bottom: PreferredSize(
                  preferredSize: Size.fromHeight(80.h),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 40.h,
                        child: Row(
                          children: [
                            Padding(
                              padding: REdgeInsetsDirectional.only(start: 10),
                              child: const CustomeChip(),
                            ),
                            Expanded(
                              child: BlocSelector<HomeBloc, HomeState, PageState<List<CategoryModel>>>(
                                selector: (state) => state.categoriesHome,
                                builder: (context, state) {
                                  return state.when(
                                    init: () => SizedBox.shrink(),
                                    loading: () => LoadingIndicator(),
                                    loaded: (data) => ListView.builder(
                                      scrollDirection: Axis.horizontal,
                                      itemBuilder: (context, index) => Padding(
                                        padding: REdgeInsetsDirectional.only(end: 8.0, start: (index == 0) ? 10 : 0),
                                        child: CustomeChip(categoryModel: data[index]),
                                      ),
                                      itemCount: state.data.length,
                                    ),
                                    empty: () => SizedBox.shrink(),
                                    error: (exception, error) => SizedBox.shrink(),
                                  );
                                },
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: REdgeInsetsDirectional.only(top: 10, bottom: 7, start: 10, end: 10),
                        child: Text(
                          'Nearby for you',
                          style: context.textTheme.titleSmall!.xb,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              BlocSelector<HomeBloc, HomeState, PageState<List<PostModel>>>(
                selector: (state) => state.postHome,
                builder: (context, state) {
                  return state.when(
                    init: () => const SliverFillRemaining(child: SizedBox.shrink()),
                    loading: () => const SliverFillRemaining(child: LoadingIndicator()),
                    loaded: (data) => SliverList(
                        delegate: SliverChildBuilderDelegate(
                      (context, index) => Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        child: CardHome(
                          postModel: data[index],
                        ),
                      ),
                      childCount: state.getDataWhenSuccess?.length ?? 0,
                    )),
                    empty: () => const SliverFillRemaining(child: SizedBox.shrink()),
                    error: (exception, error) => const SliverFillRemaining(child: SizedBox.shrink()),
                  );
                },
              ),
            ],
          ),
        )),
      ),
    );
  }
}

/*PagedSliverList(
                      pagingController: state,
                      builderDelegate: PagedChildBuilderDelegate(
                        itemBuilder: (context, item, index) => Padding(
                          padding: EdgeInsets.symmetric(horizontal: 10),
                          child: CardHome(
                            postModel: data[index],
                          ),
                        ),
                      ),
                    )*/
/*NestedScrollView(
          headerSliverBuilder: (context, innerBoxIsScrolled) {
            return [
              SliverAppBar(
                title: Text('Pinned App Bar'),
                pinned: true,
              ),
            ];
          },
          body: Builder(
            builder: (BuildContext context) {
              return CustomScrollView(
                slivers: [
                  SliverAppBar(
                    floating: true,
                    snap: true,
                    title: Container(
                      height: 500, // Replace with your content
                      color: Colors.grey[300],
                    ),
                  ),
                  SliverList(
                      delegate: SliverChildBuilderDelegate((context, index) => CardHome(),
                          childCount: 10))
                ],
              );
            },
          ),
          floatHeaderSlivers: true,
        )*/
