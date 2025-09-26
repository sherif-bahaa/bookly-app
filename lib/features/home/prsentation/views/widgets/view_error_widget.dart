import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/widgets.dart';

class ViewErrorWidget extends StatelessWidget {
  const ViewErrorWidget({super.key, required this.errMessage});
  final String errMessage;
  @override
  Widget build(BuildContext context) {
    return Text(
      errMessage,
      style: Styles.textStyle18,
    );
  }
}
