/**
 * 
 */
package v1ch05.abstractClasses;

import java.time.LocalDate;

/**
 * 
 * @version 1.0 2017��12��14��
 * @author liwang
 *
 */
public class Employee extends Person {
	private double salary;
	private LocalDate hireDay;
	
	public Employee(String name, double salary, int year, int month, int day)
	{
		super(name);
		this.salary = salary;
		this.hireDay = LocalDate.of(year, month, day);
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



	/* ���� Javadoc��
	 * @see v1ch05.abstractClasses.Person#getDescription()
	 */
	@Override
	public String getDescription() {
		// TODO �Զ����ɵķ������
		return String.format("an employee with a salary of $%.2f", salary);
	}
	
	public void raiseSalary(double byPercent)
	{
		double raise = this.salary * byPercent / 100;
		this.salary += raise;
	}

}
