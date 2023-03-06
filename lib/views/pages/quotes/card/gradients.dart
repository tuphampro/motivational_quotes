import 'package:flutter/cupertino.dart';

final listGradients = [
  gradientRed,
  gradientPurple,
  gradientBlue,
  gradientPink,
  identityGradient
];

LinearGradient gradientRed = LinearGradient(
  begin: Alignment.topCenter,
  end: Alignment.bottomCenter,
  colors: [
    Color(0xFFFF3868).withOpacity(.63),
    Color(0xFFFFB49A).withOpacity(0.98),
  ],
);

LinearGradient gradientPurple = LinearGradient(
  begin: Alignment.topCenter,
  end: Alignment.bottomCenter,
  colors: [
    Color(0xFF736EFE).withOpacity(.63),
    Color(0xFF62E4EC).withOpacity(0.98),
  ],
);

LinearGradient gradientBlue = LinearGradient(
  begin: Alignment.topCenter,
  end: Alignment.bottomCenter,
  colors: [
    Color(0xFF0BA4E0).withOpacity(.63),
    Color(0xFFA9E4BD).withOpacity(0.98),
  ],
);

LinearGradient gradientPink = LinearGradient(
  begin: Alignment.topCenter,
  end: Alignment.bottomCenter,
  colors: [
    Color(0xFFFF6864).withOpacity(.63),
    Color(0xFFFFB92F).withOpacity(0.98),
  ],
);

LinearGradient identityGradient = LinearGradient(
  begin: Alignment.topCenter,
  end: Alignment.bottomCenter,
  colors: [
    Color(0xFF7960F1).withOpacity(.63),
    Color(0xFFE1A5C9).withOpacity(0.98),
  ],
);
