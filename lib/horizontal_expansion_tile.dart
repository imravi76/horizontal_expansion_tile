import 'package:flutter/material.dart';

class HorizontalExpansionTile extends StatefulWidget {
  final Widget title;
  final Widget? subtitle;
  final Widget? leading;
  final Widget? trailing;
  final List<Widget>? children;
  final Axis axis;
  final CrossAxisAlignment? crossAxisAlignment;

  const HorizontalExpansionTile({
    super.key,
    required this.title,
    this.subtitle,
    this.leading,
    this.trailing,
    this.children,
    this.axis = Axis.vertical,
    this.crossAxisAlignment,
  });

  @override
  _HorizontalExpansionTileState createState() => _HorizontalExpansionTileState();
}

class _HorizontalExpansionTileState extends State<HorizontalExpansionTile> with SingleTickerProviderStateMixin {
  bool detailsStatus = false;

  @override
  Widget build(BuildContext context) {
    return Flex(
      direction: widget.axis,
      crossAxisAlignment: widget.crossAxisAlignment ?? CrossAxisAlignment.start,
      children: [
        mainWidget(),
        subWidget(),
      ],
    );
  }

  Widget mainWidget() {
    return GestureDetector(
      onTap: () => setState(() => detailsStatus = !detailsStatus),
      child: MainWidget(
        title: widget.title,
        subtitle: widget.subtitle,
        leading: widget.leading,
        trailing: widget.trailing,
        centerAlign: detailsStatus,
      ),
    );
  }

  Widget subWidget() {
    return AnimatedAlign(
      duration: const Duration(milliseconds: 300),
      alignment: Alignment.topCenter,
      child: AnimatedSize(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
        child: Visibility(
          visible: detailsStatus,
          child: Flex(
            direction: widget.axis,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: widget.children ?? [],
          ),
        ),
      ),
    );
  }
}

class MainWidget extends StatelessWidget {
  final Widget title;
  final Widget? subtitle;
  final Widget? leading;
  final Widget? trailing;
  final bool centerAlign;

  const MainWidget({
    super.key,
    required this.title,
    this.subtitle,
    this.leading,
    this.trailing,
    this.centerAlign = false,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: centerAlign ? CrossAxisAlignment.center : CrossAxisAlignment.start,
      children: [
        if (leading != null) leading!,
        Column(
          crossAxisAlignment: centerAlign ? CrossAxisAlignment.center : CrossAxisAlignment.start,
          children: [
            title,
            if (subtitle != null) subtitle!,
          ],
        ),
        if (trailing != null) trailing!,
      ],
    );
  }
}
