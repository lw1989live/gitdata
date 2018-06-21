/**
 * 
 */
package v1ch05.equals;

/**
 * This program demonstrates the equals method.
 * @version 1.0 2017��12��15��
 * @author liwang
 *
 */
public class EqualsTest {

	/**
	 * @param args
	 */
	public static void main(String[] args) {
		// TODO �Զ����ɵķ������
		Employee alice1 = new Employee("Alice adams", 75000, 1987, 12, 15);
		Employee alice2 = alice1;
		Employee alice3 = new Employee("Alice Adams", 75000, 1986, 12, 15);
		Employee bob = new Employee("Bob Brandson", 50000, 1989, 10, 1);
		
		System.out.println("alice1 == alice2: " + (alice1 == alice2));
		System.out.println("alice1 == alice3: " + (alice1 == alice2));
		System.out.println("alice1.equals(alice3): " + alice1.equals(alice3));
		System.out.println("alice1.equals(bob): " + alice1.equals(bob));
		System.out.println("bob.toString(): " + bob);
		
		Manager car1 = new Manager("Carl Cracker", 80000, 1987, 12, 15);
		Manager boss = new Manager("Carl Cracker", 80000, 1987, 12, 15);
		boss.setBonus(5000);
		System.out.println("boss.toString(): " + boss);
		System.out.println("car1.equals(boss): " + car1.equals(boss));
		System.out.println("alice1.hashCode(): " + alice1.hashCode());
		System.out.println("alice3.hashCode(): " + alice3.hashCode());
		System.out.println("bob.hashCode(): " + bob.hashCode());
		System.out.println("car1.hashCode(): " + car1.hashCode());
		
	}

}
