import 'package:flutter_map/flutter_map.dart';
import 'package:flutter_map_marker_cluster/src/marker_cluster_data_node.dart';
import 'package:flutter_map_marker_cluster/src/node/marker_cluster_node.dart';
import 'package:latlong/latlong.dart';

class MarkerNode<T> implements MarkerData<T> {
  final MarkerData<T> marker;
  MarkerClusterNode parent;

  MarkerNode(this.marker);

  @override
  T get data => marker.data;

  Marker get child => marker;

  @override
  Anchor get anchor => marker.anchor;

  @override
  get builder => marker.builder;

  @override
  double get height => marker.height;

  @override
  LatLng get point => marker.point;

  @override
  double get width => marker.width;
}
