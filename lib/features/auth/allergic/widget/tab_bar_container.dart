import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TabBarContainer extends StatefulWidget {
  final int length;
  final double width;
  final double height;
  final Color backgroundColor;
  final Color indicatorColor;

  const TabBarContainer({
    super.key,
    required this.length,
    this.width = 230,
    this.height = 12,
    this.backgroundColor = Colors.white,
    this.indicatorColor = Colors.pink,
  });

  @override
  State<TabBarContainer> createState() => _TabBarContainerState();
}

class _TabBarContainerState extends State<TabBarContainer> {
  late TabController _controller;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _controller = DefaultTabController.of(context);
    _controller.addListener(() => setState(() {}));
  }

  void _onTap(int index) {
    _controller.animateTo(index);
  }

  @override
  Widget build(BuildContext context) {
    final totalWidth = widget.width.w;
    final indicatorWidth = totalWidth / widget.length;

    final alignments = List.generate(
      widget.length,
          (index) {
        double step = 2 / (widget.length - 1);
        return Alignment(-1.0 + step * index, 0);
      },
    );

    return Container(
      width: totalWidth,
      height: widget.height.h,
      decoration: BoxDecoration(
        color: widget.backgroundColor,
        borderRadius: BorderRadius.circular(widget.height / 1.5),
      ),
      child: Stack(
        children: [
          AnimatedAlign(
            alignment: alignments[_controller.index],
            duration:  Duration(milliseconds: 300),
            curve: Curves.easeInOut,
            child: Container(
              width: indicatorWidth,
              height: widget.height.h,
              decoration: BoxDecoration(
                color: widget.indicatorColor,
                borderRadius: BorderRadius.circular(widget.height / 1.5),
              ),
            ),
          ),
          Row(
            children: List.generate(widget.length, (index) {
              return Expanded(
                child: GestureDetector(
                  behavior: HitTestBehavior.opaque,
                  onTap: () => _onTap(index),
                  child:  SizedBox.expand(),
                ),
              );
            }),
          ),
        ],
      ),
    );
  }
}
