# Dart OOP Assignment: Kigali Bus Card 
Name:Mucyo David  
Student ID:26568/2024
## My numbers
- D = 68
- L = 8
- Starting balance = 1680 RWF
- Bus fare = 268 RWF
- Student discount = 18%
## Output of main.dart
Error: name too short
Owner: Ama | Balance: 1680 RWF
Owner: Mucyo David | Balance: 1680 RWF
Error: top-up must be 500 to 50000 RWF
Topped up 2000 RWF
Paid 268 RWF
Paid 268 RWF
Owner: Mucyo David | Balance: 3144 RWF
Student discount: 48 RWF
Paid 220 RWF
Owner: Mucyo David | Balance: 1460 RWF
Student card: 18% off
## Part 1: Why no setter for balance?
There is no setter for balance because the balance should not be changed directly. It should only change through methods such as `topUp()` and `pay()`. This helps prevent invalid balance changes and keeps the card's balance under control.
## Part 2: What does ~/ do?
The `~/` operator performs integer division. It divides two numbers and returns only the whole-number result, without the decimal part. In our program, it is used to calculate the student's discount.
## Part 4: Bug table

| Bug | The line                       | Why it is wrong (my words)              | My fix |
| 1 | String _brand; and int _battery; | The fields do not have starting values. | Initialize them with '' and 0. |
| 2 | SmartPhone(String brand, int battery, String system) | The parent class constructor requires brand and battery values. | Add : super(brand, battery). |
| 3 | @override void restart() | The parent class does not have a restart() method to override. | Add restart() to the Phone class. |
| 4 | p.battery = 100; | There is no setter to allow the battery value to be changed. | Add a setter that accepts values from 0 to 100. |
| 5 | print(p.battery()); | A getter is accessed like a property, not called like a method. | Use print(p.battery);. |
| Not a bug | new Phone('Tecno', 50); | This is valid Dart syntax. The new keyword is optional. | No fix needed. |
## Part 5
My prediction:
0
1
Real output:
1
5
Was I right?
No, my prediction was partly wrong. I predicted 1 and 2, but the actual output was 1 and 5.
The first output was 1 because the Bag started with 0 items, and add() increased it to 1. When I tried to assign -5, the setter rejected the negative value, so the number remained 1.
The second output was 5 because BigBag overrides the add() method. Each time add() is called, super.add() runs twice, increasing the number of items by 2. After calling b.add() twice, the number became 4. Finally, b.items = b.items + 1 added one more item, making the final result 5.
