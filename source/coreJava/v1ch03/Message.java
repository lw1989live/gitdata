/**
 * 
 */
package v1ch03;

/**
 * 
 * @version 1.0 2017��12��7��
 * @author liwang
 * 
 */
public class Message {

	/**
	 * @param args
	 */
	public static void main(String[] args) {
		// TODO �Զ����ɵķ������
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
