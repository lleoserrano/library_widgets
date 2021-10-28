import 'package:flutter/material.dart';
import 'package:library_widgets/library_widgets.dart';

class FlowButtons extends StatelessWidget {
  final animation = ValueNotifier<bool>(false);
  final List<Widget> menuItems;
  final double? sizeItens;
  final double heightAnimation;
  final Duration durationAnimation;
  final Widget iconMenu;
  final AnimationPosition animationPosition;
  final Color? colorBackgroundIconMenu;

  FlowButtons({
    Key? key,
    required this.menuItems,
    required this.sizeItens,
    required this.heightAnimation,
    required this.durationAnimation,
    required this.iconMenu,
    required this.animationPosition,
    this.colorBackgroundIconMenu,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    switch (animationPosition) {
      case AnimationPosition.top:
        return _animatedPositionTop();
      case AnimationPosition.left:
        return _animatedPositionLeft();
      case AnimationPosition.bottom:
        return _animatedPositionBottom();
      case AnimationPosition.right:
        return _animatedPositionRight();
      default:
        throw 'Error animationPosition';
    }
  }

  Widget _animatedPositionTop() {
    return SizedBox(
      child: ValueListenableBuilder<bool>(
        valueListenable: animation,
        builder: (context, value, widgetx) {
          return Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              AnimatedContainer(
                width: sizeItens,
                clipBehavior: Clip.antiAlias,
                height: value ? heightAnimation : 0,
                decoration: const BoxDecoration(),
                duration: durationAnimation,
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min,
                      verticalDirection: VerticalDirection.up,
                      children: menuItems
                          .map(
                            (e) => Flexible(
                              child: SizedBox(
                                height: sizeItens,
                                width: sizeItens,
                                child: e,
                              ),
                            ),
                          )
                          .toList(),
                    ),
                  ],
                ),
              ),
              FloatingActionButton(
                backgroundColor:
                    colorBackgroundIconMenu ?? Theme.of(context).primaryColor,
                onPressed: () {
                  if (menuItems.isNotEmpty) {
                    animation.value = !animation.value;
                  }
                },
                child: iconMenu,
              ),
            ],
          );
        },
      ),
    );
  }

  Widget _animatedPositionBottom() {
    return SizedBox(
      child: ValueListenableBuilder<bool>(
        valueListenable: animation,
        builder: (context, value, widgetx) {
          return Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              FloatingActionButton(
                backgroundColor:
                    colorBackgroundIconMenu ?? Theme.of(context).primaryColor,
                onPressed: () {
                  if (menuItems.isNotEmpty) {
                    animation.value = !animation.value;
                  }
                },
                child: iconMenu,
              ),
              AnimatedContainer(
                width: sizeItens,
                clipBehavior: Clip.antiAlias,
                height: value ? heightAnimation : 0,
                decoration: const BoxDecoration(),
                duration: durationAnimation,
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min,
                      verticalDirection: VerticalDirection.up,
                      children: menuItems
                          .map(
                            (e) => Flexible(
                              child: SizedBox(
                                height: sizeItens,
                                width: sizeItens,
                                child: e,
                              ),
                            ),
                          )
                          .toList(),
                    ),
                  ],
                ),
              ),
            ],
          );
        },
      ),
    );
  }

  Widget _animatedPositionLeft() {
    return SizedBox(
      child: ValueListenableBuilder<bool>(
        valueListenable: animation,
        builder: (context, value, widgetx) {
          return Row(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              AnimatedContainer(
                width: value ? heightAnimation : 0,
                clipBehavior: Clip.antiAlias,
                height: sizeItens,
                decoration: const BoxDecoration(),
                duration: durationAnimation,
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min,
                      verticalDirection: VerticalDirection.up,
                      children: menuItems
                          .map(
                            (e) => Flexible(
                              child: SizedBox(
                                height: sizeItens,
                                width: sizeItens,
                                child: e,
                              ),
                            ),
                          )
                          .toList(),
                    ),
                  ],
                ),
              ),
              FloatingActionButton(
                backgroundColor:
                    colorBackgroundIconMenu ?? Theme.of(context).primaryColor,
                onPressed: () {
                  if (menuItems.isNotEmpty) {
                    animation.value = !animation.value;
                  }
                },
                child: iconMenu,
              ),
            ],
          );
        },
      ),
    );
  }

  Widget _animatedPositionRight() {
    return SizedBox(
      child: ValueListenableBuilder<bool>(
        valueListenable: animation,
        builder: (context, value, widgetx) {
          return Row(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              FloatingActionButton(
                backgroundColor:
                    colorBackgroundIconMenu ?? Theme.of(context).primaryColor,
                onPressed: () {
                  if (menuItems.isNotEmpty) {
                    animation.value = !animation.value;
                  }
                },
                child: iconMenu,
              ),
              AnimatedContainer(
                width: value ? heightAnimation : 0,
                clipBehavior: Clip.antiAlias,
                height: sizeItens,
                decoration: const BoxDecoration(),
                duration: durationAnimation,
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min,
                      verticalDirection: VerticalDirection.up,
                      children: menuItems
                          .map(
                            (e) => Flexible(
                              child: SizedBox(
                                height: sizeItens,
                                width: sizeItens,
                                child: e,
                              ),
                            ),
                          )
                          .toList(),
                    ),
                  ],
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
