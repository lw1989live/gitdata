/**
 * 
 */
package v1ch03;
import java.util.*;

/**
 * This program demonstrates console input.
 * @version 1.0 2017��12��7��
 * @author liwang
 *
 */
public class InputTest {

	/**
	 * @param args
	 */
	public static void main(String[] args) {
		// TODO �Զ����ɵķ������
		Scanner in = new Scanner(System.in);
		
		// get first input
		System.out.print("What is you name? ");
		String name = in.nextLine();
		
		// get second input
		System.out.print("How old are you? ");
		int age = in.nextInt();
		
		// display output on console
		System.out.println("Hello, " + name + ". Next year, you'll be " + (age + 1));

	}

}
