enum OrderStatusCode {
  pending(1),
  confirmed(2),
  processing(3),
  waitingForAction(4),
  shipped(5),
  delivered(6),
  cancelled(7),
  returned(8),
  onHold(9),
  failedDeliveryAttempt(10),
  refunded(11),
  partiallyShipped(12),
  partiallyDelivered(13),
  awaitingPayment(14);

  const OrderStatusCode(this.id);

  final int id;

  static OrderStatusCode fromId(int id) {
    return OrderStatusCode.values.firstWhere((e) => e.id == id);
  }
}
