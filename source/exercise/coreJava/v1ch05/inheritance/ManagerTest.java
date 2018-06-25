package v1ch05.inheritance;


/**
 * This program demonstrates inheritance
 * @version 1.0 2017年12月14日
 * @author liwang
 *
 */
public class ManagerTest {

	public static void main(String[] args) {
		// TODO 自动生成的方法存根
		// construct a Manager object
		Manager boos = new Manager("Carl Cracker", 80000, 1987, 12,15);
		boos.setBonus(5000);
		
		Employee[] staff = new Employee[3];
		
		// fill the staff array with Manager and Employee objects
		
		staff[0] = boos;
		staff[1] = new Employee("Harry Hacker", 50000, 1989, 10, 1);
		staff[2] = new Employee("Tommy Tester", 40000, 1990, 3, 15);
		
		// print out information about all Employee objects
		for (Employee e : staff)
			System.out.println("name=" + e.getName() + ", salary=" + e.getSalary());

	}

}
