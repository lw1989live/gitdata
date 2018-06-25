/**
 * 
 */
package v1ch03;

/**
 * 
 * @version 1.0 2017年12月7日
 * @author liwang
 * 
 */
public class Message {

	/**
	 * @param args
	 */
	public static void main(String[] args) {
		// TODO 自动生成的方法存根
		if (args.length == 0 || args[0].equals("-h"))
			System.out.print("Hello,");
		else if (args[0].equals("-g"))
			System.out.print("Goodbye,");
		// print the other command-line arguments
		for (int i = 1; i < args.length; i++)
			System.out.print(" " + args[i]);
		System.out.println("!");

	}

}
