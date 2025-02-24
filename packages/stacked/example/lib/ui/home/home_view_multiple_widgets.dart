import 'package:example/ui/dumb_widgets/description_section.dart';
import 'package:example/ui/dumb_widgets/title_section.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'home_viewmodel.dart';

class HomeViewMultipleWidgets extends StatelessWidget {
  const HomeViewMultipleWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<HomeViewModel>.reactive(
      viewModelBuilder: () => HomeViewModel(),
      onModelReady: (viewModel) => viewModel.initialise(),
      builder: (context, viewModel, _) => Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            viewModel.updateTitle();
          },
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            TitleSection(),
            DescriptionSection(),
          ],
        ),
      ),
    );
  }
}
