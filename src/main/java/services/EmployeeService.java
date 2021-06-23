package services;

import entity.Employee;

import java.util.LinkedHashMap;
import java.util.List;

public interface EmployeeService {

 List<Employee> getEmployeeDetails();
 void updateEmployeeDetails(Employee employee);
 void addEmployeeDetails(Employee employee);
 List<Employee> getEmployeeDetailsById(int employeeCode);
}
