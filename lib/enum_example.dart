class Employee {
  final String name;
  final EmployeeType employeeType;

  Employee(this.name, this.employeeType);

  void showEmployeeInfo() {
    switch (employeeType) {
      case EmployeeType.fullTime:
        print("Full Time Employee Salary: ${EmployeeType.fullTime.salary}");
        break;
      case EmployeeType.partTime:
        print("Part Time Employee Salary: ${EmployeeType.partTime.salary}");
        break;
      case EmployeeType.intern:
        print("Intern Employee Salary: ${EmployeeType.intern.salary}");
        break;
      default:
        print("Employee Type Not Found");
    }
  }
}

// enum is a special type of class
// that can be used to represent a group of constants
enum EmployeeType {
  fullTime(1000),
  partTime(500),
  intern(300);

  // this is how passing argument in the enum constructor
  final int salary;
  const EmployeeType(this.salary);
}
