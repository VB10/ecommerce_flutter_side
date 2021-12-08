part of '../profile_view.dart';

class _UserModel {
  final String name;
  final String mail;
  final String image = 'https://picsum.photos/seed/picsum/200/300';

  _UserModel(this.name, this.mail);
}

class _ProfileCard extends StatelessWidget {
  _ProfileCard({Key? key}) : super(key: key);
  final _model = _UserModel('Jane Doe', 'test@email.com');
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 25.w,
          child: FittedBox(
            child: CircleAvatar(
              backgroundImage: NetworkImage(_model.image),
            ),
          ),
        ),
        context.emptySizedWidthBoxLow,
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(_model.name,
                  style: context.textTheme.headline4
                      ?.copyWith(color: context.colorScheme.onBackground, fontWeight: FontWeight.bold)),
              Text(
                _model.mail,
                style: context.textTheme.subtitle1?.copyWith(color: context.colorScheme.onSurface),
              ),
              TextButton(
                  style: TextButton.styleFrom(
                      primary: context.colorScheme.onSurface,
                      textStyle: context.textTheme.bodyText1?.copyWith(fontWeight: FontWeight.bold),
                      shape: StadiumBorder(side: BorderSide(color: context.colorScheme.onSurface.withOpacity(0.2)))),
                  onPressed: () {},
                  child: Text(
                    LocaleKeys.profile_editProfile.tr(),
                    style: context.textTheme.subtitle2?.copyWith(letterSpacing: 2),
                  )),
            ],
          ),
        ),
      ],
    );
  }
}
