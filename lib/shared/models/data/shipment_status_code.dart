enum ShipmentStatusCode {
  pending(1),
  processed(2),
  shipped(3),
  inTransit(4),
  outForDelivery(5),
  delivered(6),
  failedDeliveryAttempt(7),
  returned(8),
  cancelled(9),
  onHold(10);

  const ShipmentStatusCode(this.id);

  final int id;

  static ShipmentStatusCode fromId(int id) {
    return ShipmentStatusCode.values.firstWhere((e) => e.id == id);
  }
}
