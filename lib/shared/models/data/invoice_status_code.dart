enum InvoiceStatusCode {
  draft("000000000000001"),
  active("000000000000002"),
  sent("000000000000003"),
  disputed("000000000000004"),
  overdue("000000000000005"),
  partial("000000000000006"),
  paid("000000000000007"),
  void_("000000000000008"),
  debt("000000000000009"),
  reserved("000000000000010");

  const InvoiceStatusCode(this.id);

  final String id;
}
