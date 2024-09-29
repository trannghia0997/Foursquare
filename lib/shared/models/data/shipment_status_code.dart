enum ShipmentStatusCodeData {
  pending("000000000000001"),
  processed("000000000000002"),
  shipped("000000000000003"),
  inTransit("000000000000004"),
  outForDelivery("000000000000005"),
  delivered("000000000000006"),
  failedDeliveryAttempt("000000000000007"),
  returned("000000000000008"),
  cancelled("000000000000009"),
  onHold("000000000000010");

  const ShipmentStatusCodeData(this.id);

  final String id;
}
