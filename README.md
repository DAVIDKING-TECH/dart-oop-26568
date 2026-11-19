## Part 2: Bug hunt
Bug 1: Uninitialized fields
_brand and _battery were not given initial values. I initialized them with '' and 0.
Bug 2: Missing parent constructor
SmartPhone did not call the Phone constructor. I fixed this using : super(brand, battery).
Bug 3: Invalid override
Phone did not have a restart() method. I added it to the parent class so SmartPhone could override it.
Bug 4: Missing setter
The code tried to change p.battery, but there was no setter. I added a setter to update the battery value.
Bug 5: Incorrect getter access
p.battery() was incorrect because battery is a getter, not a method. I changed it to p.battery.
Line that looks wrong but is correct:
new Phone('Tecno', 50) is valid Dart code. The new keyword is optional, but it is not an error.
Actual output:100
Part 5: Predict the output
My prediction:
1
2
I predict that the first bag will print 1 because it adds one item. The big bag will print 2 because each call to add() increases the number of items by addind  1 again.
