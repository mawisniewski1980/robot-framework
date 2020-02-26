class Employee:

    def __init__(self, name, salary):
        self.name = name
        self.salary = salary

    def printName(self):
        print("Name: ", self.name)

    def printSalary(self):
        print("Salary: ", self.salary)

emp = Employee("Name", 6666)
emp.printName()
emp.printSalary()