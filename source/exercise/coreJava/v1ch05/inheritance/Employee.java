package v1ch05.inheritance;

import java.time.LocalDate;


/**
 *
 * @version 1.0 2017Äê12ÔÂ14ÈÕ
 * @author liwang
 *
 */
public class Employee {
	private String name;
	private double salary;
	private LocalDate hireDay;
	
	/**
	 * @param name
	 * @param salary
	 * @param year, month, day
	 */
	public Employee(String name, double salary, int year, int month, int day) {
		super();
		this.name = name;
		this.salary = salary;
		this.hireDay = LocalDate.of(year, month, day);
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
	 * @return hireDay
	 */
	public LocalDate getHireDay() {
		return hireDay;
	}
	
	public void raiseSalary(double byPercent)
	{
		double raise = this.salary * byPercent / 100;
		this.salary += raise;
	}

}
