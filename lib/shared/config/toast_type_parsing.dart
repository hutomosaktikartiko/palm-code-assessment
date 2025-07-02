import 'package:flutter/material.dart';

import 'color_config.dart';

enum ToastType {
  error,
  success,
  warning,
}

extension ToastTypeParsing on ToastType {
  Color get backgroundColor {
    switch (this) {
      case ToastType.error:
        return ColorConfig.redError;
      case ToastType.success:
        return ColorConfig.greenSuccess;
      case ToastType.warning:
        return ColorConfig.yellow;
    }
  }

  Color get textColor {
    switch (this) {
      case ToastType.error:
        return Colors.white;
      case ToastType.success:
        return Colors.white;
      case ToastType.warning:
        return Colors.white;
    }
  }
}
