
class BusCard {
  String _owner = '';
  int _balance = 0;

  // Constructor
  BusCard(String owner, int balance) {
    _owner = owner;
    _balance = balance;
  }

  // Getter for owner
  String get owner {
    return _owner;
  }

  // TODO 1: Getter for balance
  int get balance {
    return _balance;
  }

  // Setter for owner
  set owner(String newName) {
    if (newName.length < 3) {
      print('Error: name too short');
    } else {
      _owner = newName;
    }
  }

  // Method to show information
  void showInfo() {
    print('Owner: $_owner | Balance: $_balance RWF');
  }

  // TODO 2: Top up method
  void topUp(int amount) {
    if (amount >= 500 && amount <= 50000) {
      _balance = _balance + amount;
      print('Topped up $amount RWF');
    } else {
      print('Error: top-up must be 500 to 50000 RWF');
    }
  }

  // TODO 3: Pay method
  void pay(int fare) {
    if (fare > _balance) {
      print('Card declined');
    } else {
      _balance = _balance - fare;
      print('Paid $fare RWF');
    }
  }
}

class StudentCard extends BusCard {
  int _discount = 0;

  // Constructor
  StudentCard(String owner, int balance, int discount)
      : super(owner, balance) {
    _discount = discount;
  }

  // Override showInfo
  @override
  void showInfo() {
    super.showInfo();
    print('Student card: $_discount% off');
  }

  // TODO 4: Override pay method
  @override
  void pay(int fare) {
    int off = fare * _discount ~/ 100;

    print('Student discount: $off RWF');

    super.pay(fare - off);
  }
}

void main() {
  // My numbers: D = 68, L = 8
  // Starting balance = 1680 RWF
  // Bus fare = 268 RWF
  // Discount = 18%

  // Create a BusCard
  BusCard card = BusCard('Ama', 1680);

  // Test the owner setter
  card.owner = 'Al';
  card.showInfo();

  // TODO 5: Change owner to full name
  card.owner = 'Mucyo David';
  card.showInfo();

  // TODO 6: Test top up
  card.topUp(100);
  card.topUp(2000);

  // TODO 7: Pay bus fare two times
  card.pay(268);
  card.pay(268);
  card.showInfo();

  // TODO 8: Create a StudentCard
  StudentCard studentCard =
      StudentCard('Mucyo David', 1680, 18);

  // TODO 9: Pay bus fare using StudentCard
  studentCard.pay(268);
  studentCard.showInfo();
}

