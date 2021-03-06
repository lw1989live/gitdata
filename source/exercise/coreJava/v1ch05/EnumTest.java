/**
 * 
 */
package v1ch05;

import java.util.Scanner;

/**
 * This program demonstrates enumerated types.
 * @version 1.0 2017年12月15日
 * @author liwang
 *
 */
public class EnumTest {

	/**
	 * @param args
	 */
	public static void main(String[] args) {
		// TODO 自动生成的方法存根
		Scanner in = new Scanner(System.in);
		System.out.print("Enter a size: (SMALL, MEDIUM, LARGE, EXTRA_LARGE) ");
		String input = in.next().toUpperCase();
		Size size = Enum.valueOf(Size.class, input);
		System.out.println("Size=" + size);
		System.out.println("abbreviation=" + size.getAbbreviation());
		if (size == Size.EXTRA_LARGE)
			System.out.println("Good job--you paid attention to the _.");

	}

}

enum Size
{
	SMALL("S"), MEDIUM("M"), LARGE("L"), EXTRA_LARGE("XL");
	
	private Size(String abbreviation) { this.abbreviation = abbreviation; }
	public String getAbbreviation() { return this.abbreviation; }
	
	private String abbreviation;
}