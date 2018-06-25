/**
 * 
 */
package v1ch02;

/**
 * This program displays a greeting for the reader.
 * @version 1.30 2014-02-27
 * @author liwang
 *
 */
public class Welcome {

	/**
	 * @param args
	 */
	public static void main(String[] args) {
		// TODO 自动生成的方法存根
		String greeting = "Welcome to Core Java!";
		System.out.println(greeting);
		for (int i = 0; i < greeting.length(); i++)
			System.out.print("=");
		System.out.println();
	}

}
