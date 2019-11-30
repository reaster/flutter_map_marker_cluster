import 'package:flutter/widgets.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong/latlong.dart';

///
/// flutter_map Marker with a data field of type T. T should implement equals and hashCode.
///
class MarkerData<T> extends Marker {
  final T data;

  MarkerData({
    this.data,
    LatLng point,
    WidgetBuilder builder,
    double width,
    double height,
    AnchorPos anchorPos,
  }) : super(point: point, builder: builder, width: width, height: height, anchorPos: anchorPos);

  @override
  bool operator ==(dynamic o) => o is MarkerData && data == o.data;

  @override
  int get hashCode {
    int result = data?.hashCode ?? super.hashCode;
    return result;
  }
}
