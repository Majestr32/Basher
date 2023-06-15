import 'package:allxclusive/core/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:loading_indicator/loading_indicator.dart';

class Loading extends InheritedWidget {
  final LoadingOverlayState state;
  const Loading({
    Key? key,
    required this.state,
    required Widget child,
  }) : super(key: key, child: child);

  static Loading of(BuildContext context) {
    final Loading? result =
        context.dependOnInheritedWidgetOfExactType<Loading>();
    assert(result != null, 'No Loading found in context');
    return result!;
  }

  @override
  bool updateShouldNotify(covariant Loading old) {
    return true;
  }
}

class LoadingOverlay extends StatefulWidget {
  final Widget child;
  const LoadingOverlay({Key? key, required this.child}) : super(key: key);

  static LoadingOverlayState of(BuildContext context) {
    final Loading? result =
    context.dependOnInheritedWidgetOfExactType<Loading>();
    assert(result != null, 'No Loading found in context');
    return result!.state;
  }

  @override
  State<LoadingOverlay> createState() => LoadingOverlayState();
}

class LoadingOverlayState extends State<LoadingOverlay> {

  bool _show = false;

  void show(){
    setState(() {
      _show = true;
    });
  }

  void hide(){
    setState(() {
      _show = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Loading(
      state: this,
      child: Container(
        width: double.infinity,
        height: double.infinity,
        child: Stack(
          children: [
            widget.child,
            _show ? Container(color: KColors.textColor.withOpacity(0.65),) : SizedBox.shrink(),
            _show ? LoadingIndicatorWidget() : SizedBox.shrink()
          ],
        ),
      ),
    );
  }
}

class LoadingIndicatorWidget extends StatelessWidget {
  const LoadingIndicatorWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 64,
        height: 64,
        child: Center(
          child: LoadingIndicator(
            indicatorType: Indicator.lineScalePulseOut,
            colors: [
              KColors.mainAccent,
              KColors.secondAccent
            ],
          ),
        ),
      ),
    );
  }
}

