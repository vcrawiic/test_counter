import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../logo/logo_widget.dart';
import 'first_page_cubit.dart';
import 'first_page_state.dart';

class FirstPageBody extends StatelessWidget {
  const FirstPageBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FirstPageCubit, FirstPageState>(
      builder: (context, state) {
        return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 70),
            Center(
              child: LogoWidget(
                leftColor: state.leftColor,
                rightColor: state.rightColor,
                onTap: () => context.read<FirstPageCubit>().onLogoTap(),
              ),
            ),
          ],
        );
      },
    );
  }
}
