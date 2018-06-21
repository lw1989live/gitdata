/**
 * 
 */
package v1ch04;

import java.time.LocalDate;
import java.util.Random;

/**
 * 
 * @version 1.0 2017年12月13日
 * @author liwang
 * 
 */
public class Employee {
	private static int nextId;

	private int id;
	private String name = ""; // instance field initialization
	private double salary;
	private LocalDate hireDay;
	
	// static initialization block
	static
	{
		Random generator = new Random();
		// set nextId to a random number between 0 and 999
		nextId = generator.nextInt(1000);
	}
	
	// object initialization block
	{
		id = nextId;
		nextId++;
	}
	
	// three overloaded constructors
	public Employee(String n, double s)
	{
		name = n;
		salary = s;
	}
	
	public Employee(double s)
	{
		// calls the Employee(String, double) constructor
		this("Employee #" + nextId, s);
	}
	
	//the default constructor
	public Employee()
	{
		// name initialized to ""--see above
		// salary not explicitly set--initialized to 0
		// id initialized in initialization block
	}
	
	public Employee(String n, double s, int year, int month, int day)
	{
		name = n;
		salary = s;
		hireDay = LocalDate.of(year, month, day);
	}
	
	/**
	 * @return nextId
	 */
	public static int getNextId() {
		return nextId;
	}

	/**
	 * @return name
	 */
	public String getName() {
		return name;
	}

	/**
	 * @return salary
	 */
	public double getSalary() {
		return salary;
	}

	/**
	 * @return id
	 */
	public int getId() {
		return id;
	}

	/**
	 * @param id 要设置的 id
	 */
	public void setId() {
		this.id = Employee.nextId; // set id to next available id
		nextId++;
	}

	/**
	 * @return hireDay
	 */
	public LocalDate getHireDay() {
		return hireDay;
	}

	public void raiseSalary(double byPercent)
	{
		double raise = salary * byPercent /100;
		salary += raise;
	}
	
	/**
	 * @param args
	 */
	public static void main(String[] args) {
		// TODO 自动生成的方法存根
		Employee e = new Employee("Harry", 50000);
		System.out.println(e.getName() + " " + e.getSalary());

	}

}
