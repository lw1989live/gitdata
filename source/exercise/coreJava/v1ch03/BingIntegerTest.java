/**
 * 
 */
package v1ch03;
import java.math.BigInteger;
import java.util.Scanner;

/**
 * This program user big numbers to compute the odds of winning the grand prize in a lottery
 * @version 1.0 2017年12月7日
 * @author liwang
 * 
 */
public class BingIntegerTest {

	/**
	 * @param args
	 */
	public static void main(String[] args) {
		// TODO 自动生成的方法存根
		Scanner in = new Scanner(System.in);
		
		System.out.print("How many numbers do you need to draw? ");
		int k = in.nextInt();
		
		System.out.print("What is the highest number you can drea? ");
		int n = in.nextInt();

		/*
		 * compute binomial coefficient n*(n-1)*(n-2)*...*(n-k+1)/(1*2*3*...*k)
		 */
		BigInteger lotteryOdds = BigInteger.valueOf(1);
		
		for (int i = 1; i <= k; i++)
			lotteryOdds = lotteryOdds.multiply(BigInteger.valueOf
					(n - i + 1)).divide(BigInteger.valueOf(i));
		
		System.out.println("Your odds are 1 in " + lotteryOdds + ". Good lock!");

	}

}
