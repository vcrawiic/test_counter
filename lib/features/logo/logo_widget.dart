import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:test_task/design/palette.dart';

class LogoWidget extends StatelessWidget {
  const LogoWidget({
    super.key,
    this.leftColor = Pallete.lightGrey,
    this.rightColor = Pallete.lightGrey,
    this.onTap,
  });

  final Color leftColor;
  final Color rightColor;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: onTap,
      child: SizedBox(
        width: 160,
        height: 160,
        child: Stack(
          alignment: Alignment.center,
          children: [
            Positioned(
              left: 0,
              top: 0,
              child: SvgPicture.asset(
                'assets/left.svg',
                fit: BoxFit.contain,
                height: 150,
                colorFilter: ColorFilter.mode(leftColor, BlendMode.srcIn),
              ),
            ),
            Positioned(
              right: 0,
              bottom: 0,
              child: SvgPicture.asset(
                'assets/right.svg',
                fit: BoxFit.contain,
                height: 150,
                colorFilter: ColorFilter.mode(rightColor, BlendMode.srcIn),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
