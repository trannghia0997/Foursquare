enum InvoiceStatusCode {
  draft(1),
  active(2),
  sent(3),
  disputed(4),
  overdue(5),
  partial(6),
  paid(7),
  void_(8),
  debt(9),
  reserved(10);

  const InvoiceStatusCode(this.id);

  final int id;

  static InvoiceStatusCode fromId(int id) {
    return InvoiceStatusCode.values.firstWhere((e) => e.id == id);
  }
}
