import 'dart:io';

void main() {
  // Display the main menu
  while (true) {
    print("\n=== BasiCulator ===");
    print("1. Addition");
    print("2. Subtraction");
    print("3. Multiplication");
    print("4. Division");
    print("5. Compare (Greater Than, Less Than, Equal To)");
    print("6. Exit");
    stdout.write("Choose an option (1-6): ");

    String? choice = stdin.readLineSync();

    switch (choice) {
      case '1':
        performArithmeticOperation('Addition');
        break;
      case '2':
        performArithmeticOperation('Subtraction');
        break;
      case '3':
        performArithmeticOperation('Multiplication');
        break;
      case '4':
        performArithmeticOperation('Division');
        break;
      case '5':
        performComparisonOperation();
        break;
      case '6':
        print("Exiting the program...");
        return; // Exit the program
      default:
        print("Invalid choice. Please enter a number between 1 and 6.");
    }
  }
}

/// Performs arithmetic operations based on user choice.
void performArithmeticOperation(String operation) {
  stdout.write("Enter the first number: ");
  double num1 = double.parse(stdin.readLineSync() ?? '0');

  stdout.write("Enter the second number: ");
  double num2 = double.parse(stdin.readLineSync() ?? '0');

  double result;

  switch (operation) {
    case 'Addition':
      result = num1 + num2;
      break;
    case 'Subtraction':
      result = num1 - num2;
      break;
    case 'Multiplication':
      result = num1 * num2;
      break;
    case 'Division':
      if (num2 == 0) {
        print("Error: Division by zero is not allowed.");
        return;
      }
      result = num1 / num2;
      break;
    default:
      print("Invalid operation.");
      return;
  }

  print("The result of $operation is: $result");
}

/// Performs comparison operations based on user input.
void performComparisonOperation() {
  stdout.write("Enter the first number: ");
  double num1 = double.parse(stdin.readLineSync() ?? '0');

  stdout.write("Enter the second number: ");
  double num2 = double.parse(stdin.readLineSync() ?? '0');

  print("\nComparison Results:");
  print("$num1 > $num2: ${num1 > num2}");
  print("$num1 < $num2: ${num1 < num2}");
  print("$num1 == $num2: ${num1 == num2}");
}
