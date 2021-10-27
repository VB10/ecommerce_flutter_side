import 'package:flutter/material.dart';
import 'package:kartal/src/context_extension.dart';

import '../../../core/init/app/base/base_view.dart';
import '../../../product/utility/space_utility.dart';
import '../../../product/widget/padding/paddig_widgets.dart';
import 'viewModel/profile_view_model.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BaseView<ProfileViewModel>(
      model: ProfileViewModel(),
      onModelReady: (model) {
        model.setContext(context);
        model.init();
      },
      builder: (BuildContext context, ProfileViewModel viewModel) => Scaffold(
          appBar: AppBar(),
          body: PaddingNormal(
            child: Column(
              children: [
                SizedBox(
                  height: SpaceUtility.spacingXL,
                  child: Row(
                    children: [
                      CircleAvatar(
                        radius: SpaceUtility.spacingX,
                        backgroundImage: NetworkImage('https://picsum.photos/seed/picsum/200/300'),
                      ),
                      context.emptySizedWidthBoxLow,
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Jane Doe',
                                style: context.textTheme.headline3?.copyWith(color: context.colorScheme.onSurface)),
                            Expanded(
                              child: Text(
                                'janedoe123@email.com',
                                style: context.textTheme.subtitle1?.copyWith(color: context.colorScheme.onSurface),
                              ),
                            ),
                            Expanded(
                              child: TextButton(
                                  style: TextButton.styleFrom(
                                      primary: context.colorScheme.onSurface,
                                      textStyle: context.textTheme.bodyText1?.copyWith(fontWeight: FontWeight.bold),
                                      shape: StadiumBorder(
                                          side: BorderSide(color: context.colorScheme.onSurface.withOpacity(0.2)))),
                                  onPressed: () {},
                                  child: Text('EDIT PROFILE')),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                context.emptySizedHeightBoxLow3x,
                //
                Card(
                  child: Column(
                    children: [
                      ListTile(
                        leading: Icon(Icons.menu),
                        subtitle: Divider(),
                        title: Row(
                          children: [
                            Text('All My Orders'),
                            Spacer(),
                            SizedBox(
                              width: 24,
                              child: TextButton(
                                  style: TextButton.styleFrom(
                                      // fixedSize: Size.fromRadius(2),
                                      padding: EdgeInsets.zero,
                                      shape: const CircleBorder(),
                                      backgroundColor: context.colorScheme.primary),
                                  onPressed: () {},
                                  child: Icon(
                                    Icons.chevron_right_outlined,
                                    color: context.colorScheme.onPrimary,
                                    size: 16,
                                  )),
                            )
                          ],
                        ),
                        // trailing: SizedBox(
                        //   width: 15,
                        //   height: 15,
                        //   child: TextButton(
                        //       style: TextButton.styleFrom(
                        //           shape: const CircleBorder(), backgroundColor: context.colorScheme.secondary),
                        //       onPressed: () {},
                        //       child: Icon(
                        //         Icons.chevron_right_outlined,
                        //         color: context.colorScheme.onPrimary,
                        //       )),
                        // ),
                      )
                    ],
                  ),
                )
              ],
            ),
          )),
    );
  }
}
