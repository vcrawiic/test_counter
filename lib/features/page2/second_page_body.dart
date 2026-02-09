import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../logo/logo_widget.dart';
import 'second_page_cubit.dart';

class SecondPageBody extends StatelessWidget {
  const SecondPageBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        spacing: 24,
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
            width: double.infinity,
            child: BlocBuilder<SecondPageCubit, int>(
              builder: (context, counter) {
                return Text(
                  textAlign: TextAlign.center,
                  'counter: $counter',
                  style: const TextStyle(
                    fontSize: 32,
                    fontFeatures: [FontFeature.tabularFigures()],
                  ),
                );
              },
            ),
          ),
          Center(
            child: LogoWidget(
              onTap: () => context.read<SecondPageCubit>().increment(),
            ),
          ),
        ],
      ),
    );
  }
}
