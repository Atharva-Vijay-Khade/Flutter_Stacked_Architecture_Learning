import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'home_viewModel.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<HomeViewModel>.reactive(
      builder: (context, model, child) => Scaffold(
        body: Center(
          child: Text("${model.title} : ${model.cnt}"),
        ),
        floatingActionButton: FloatingActionButton(onPressed: model.updateCounter,),
      ),
      viewModelBuilder: ()=> HomeViewModel(),
    );
  }
}
