import 'package:flutter/material.dart';
import 'package:my_app/ui/views/Startup/startup_viewModel.dart';
import 'package:stacked/stacked.dart';


class StartupView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<StartupViewModel>.reactive(
      builder: (context, model, child) => Scaffold(
        body: Center(
          child: Text("${model.title} : ${model.cnt}"),
        ),
        floatingActionButton: FloatingActionButton(onPressed: model.updateCounter,),
      ),
      viewModelBuilder: ()=> StartupViewModel(),
    );
  }
}
