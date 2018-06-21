/**
 * 
 */
package v1ch05.abstractClasses;

/**
 * This program demonstrates abstract classes.
 * @version 1.0 2017��12��14��
 * @author liwang
 *
 */
public class PersonTess {

	/**
	 * @param args
	 */
	public static void main(String[] args) {
		// TODO �Զ����ɵķ������
		Person[] people = new Person[2];
		
		// fill the people array with Student and Employee objects
		people[0] = new Employee("Harry Hacker", 50000, 1980, 10, 1);
		people[1] = new Student("Maria Morris", "computer science");
		
		// print out names and descriptions of all Person objects
		for (Person p : people)
			System.out.println(p.getName() + ", " + p.getDescription());

	}

}