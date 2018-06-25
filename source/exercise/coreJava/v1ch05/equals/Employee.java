/**
 * 
 */
package v1ch05.equals;

import java.time.LocalDate;
import java.util.Objects;

/**
 * 
 * @version 1.0 2017年12月15日
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
	 * @param hireDay
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

	/* （非 Javadoc）
	 * @see java.lang.Object#hashCode()
	 */
	@Override
	public int hashCode() {
		return Objects.hash(this.name, this.salary, this.hireDay);
	}

	/* （非 Javadoc）
	 * @see java.lang.Object#equals(java.lang.Object)
	 */
	@Override
	public boolean equals(Object otherObject) {
		// a quick test to see if the objects are identica
		if (this == otherObject)
			return true;
		// must return false if the explicit parameter is null
		if (otherObject == null)
			return false;
		// if the classes don't match, they can't be equal
		if (getClass() != otherObject.getClass())
			return false;
		// now we know otherObject is a non-lull Employee
		Employee other = (Employee) otherObject;
		// test whether the fields have identical values
		return Objects.equals(this.name, other.name) && salary == other.salary 
				&& Objects.equals(this.hireDay, other.hireDay);
		
	}

	/* （非 Javadoc）
	 * @see java.lang.Object#toString()
	 */
	@Override
	public String toString() {
		return getClass().getName() + " [name=" + name + ", salary=" + salary + ", hireDay=" + hireDay + "]";
	}
	
	

}
