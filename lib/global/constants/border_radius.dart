import '../../app_exporter.dart';

//* Circular Radii following the 8px grid system


///[circularRadius120] is a radius of 120
const circularRadius120 = Radius.circular(120);

/// 16 circular radius
const circularRadius16 = Radius.circular(spacing16);

/// 8 circular radius
const circularRadius8 = Radius.circular(spacing8);

/// circularRadius6
const circularRadius6 = Radius.circular(6);

/// 4 circular radius
const circularRadius4 = Radius.circular(spacing4);

/// 2 circular radius
const circularRadius2 = Radius.circular(spacing2);

//* Border Radii following the 8px grid system
/// 120 border radius
const borderRadius120 = BorderRadius.all(circularRadius120);

/// 40 border radius
const borderRadius40 = BorderRadius.all(Radius.circular(40));

/// border radius 16
const borderRadius16 = BorderRadius.all(circularRadius16);

/// border radius 8
const borderRadius8 = BorderRadius.all(circularRadius8);

/// 6 border radius
const borderRadius6 = BorderRadius.all(Radius.circular(6));

/// border radius 4
const borderRadius4 = BorderRadius.all(circularRadius4);

/// border radius 2
const borderRadius2 = BorderRadius.all(circularRadius2);

/// border radius 0
const borderRadius0 = BorderRadius.zero;

/// toast border
const toastBorder = RoundedRectangleBorder(borderRadius: borderRadius8);
