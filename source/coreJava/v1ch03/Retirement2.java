/**
 * 
 */
package v1ch03;
import java.util.Scanner;

/**
 * This program demonstrates a <code>do/while</code> loop.
 * @version 1.0 2017��12��7��
 * @author liwang
 * 
 */
public class Retirement2 {

	/**
	 * @param args
	 */
	public static void main(String[] args) {
		// TODO �Զ����ɵķ������
		Scanner in = new Scanner(System.in);
		
		System.out.print("How much money will you contribute every year? ");
		double payment = in.nextDouble();
		
		System.out.print("Interest rate in %:");
		double interestRate = in.nextDouble();
		
		double balance = 0;
		int year = 0;
		
		String input;
		
		// update account balance while user isn't ready to retire
		do
		{
			// add this year's payment and interest
			balance += payment;
			double interest = balance * interestRate / 100;
			balance += interest;
			
			year++;
			
			// print current balance
			System.out.printf("After year %d, you balance is %,.2f%n", year, balance);
			
			// ask if ready to retire and get input
			System.out.print("Ready to retire? (Y/N)");
			input = in.next();
		}
		while (input.equals("N"));

	}

}
