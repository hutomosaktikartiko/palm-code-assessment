import 'package:flutter/material.dart';

class BoxShadowConfig {
  static BoxShadow defaultBoxShadow = BoxShadow(
    color: const Color(0xFF000000).withValues(alpha: 0.1),
    offset: const Offset(0, 6),
    blurRadius: 30,
  );
}
