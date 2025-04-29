import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

/// 封装悬停显示指针光标 + 点击事件的组件
class WebGestureDetector extends StatelessWidget {
  final Widget child;
  final VoidCallback onTap;
  final SystemMouseCursor cursor;

  const WebGestureDetector({
    super.key,
    required this.child,
    required this.onTap,
    this.cursor = SystemMouseCursors.click,
  });

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: cursor, // 悬停时显示指定光标
      child: GestureDetector(
        onTap: onTap, // 传递点击回调
        behavior: HitTestBehavior.opaque, // 确保整个区域可点击
        child: child, // 子组件
      ),
    );
  }
}