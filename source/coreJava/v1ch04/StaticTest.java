/**
 * 
 */
package v1ch04;

/**
 * This program demostrates static methods.
 * @version 1.0 2017年12月13日
 * @author liwang
 * 
 */
public class StaticTest {

	/**
	 * @param args
	 */
	public static void main(String[] args) {
		// TODO 自动生成的方法存根
		// fill the staff array with three Employee objects
		Employee[] staff = new Employee[3];
		
		staff[0] = new Employee("Tom", 40000);
		staff[1] = new Employee("Dick", 60000);
		staff[2] = new Employee("Harry", 65000);
		
		// print out inmormation about all Employee objects
		for (Employee e : staff)
		{
			e.setId();
			System.out.println("name=" + e.getName() + ",id=" + e.getId() + ",salary=" + e.getSalary());
		}
		
		int n = Employee.getNextId(); // calls static method
		System.out.println("Next available id = " + n);

	}

}
