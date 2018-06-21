/**
 * 
 */
package v1ch04;

/**
 * This program demonstrates object construction
 * @version 1.0 2017��12��13��
 * @author liwang
 * 
 */
public class ConstructorTest {

	/**
	 * @param args
	 */
	public static void main(String[] args) {
		// TODO �Զ����ɵķ������
		// fill the staff array with three Employee objects
		Employee[] staff = new Employee[3];
		
		staff[0] = new Employee("Harry", 40000);
		staff[1] = new Employee(60000);
		staff[2] = new Employee();
		
		// print out information about all Employee objects
		for (Employee e : staff)
			System.out.println("name=" + e.getName() + ", id=" + e.getId() + ", salary=" + e.getSalary());

	}

}
