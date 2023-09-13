enum CardType {
  master,
  visa,
  verve,
  discover,
  americanExpress,
  dinersClub,
  jcb,
  others,
  invalid
}

class PaymentEntity {
  CardType type;
  String number;
  String name;
  int month;
  int year;
  int cvv;

  PaymentEntity({
    required this.type,
    required this.number,
    required this.name,
    required this.month,
    required this.year,
    required this.cvv,
  });
}
