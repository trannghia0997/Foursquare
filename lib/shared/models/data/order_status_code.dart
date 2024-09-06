enum OrderStatusCode {
  pending("000000000000001"),
  confirmed("000000000000002"),
  processing("000000000000003"),
  waitingForAction("000000000000004"),
  shipped("000000000000005"),
  delivered("000000000000006"),
  cancelled("000000000000007"),
  returned("000000000000008"),
  onHold("000000000000009"),
  failedDeliveryAttempt("000000000000010"),
  refunded("000000000000011"),
  partiallyShipped("000000000000012"),
  partiallyDelivered("000000000000013"),
  awaitingPayment("000000000000014");

  const OrderStatusCode(this.id);

  final String id;
}
