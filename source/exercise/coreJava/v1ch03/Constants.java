/**
 * 
 */
package v1ch03;

/**
 * @version 1.0 2017��12��7��
 * @author liwang
 *
 */
public class Constants {
	
	public static final double CM_PER_INCH = 2.54;

	/**
	 * @param args
	 */
	public static void main(String[] args) {
		// TODO �Զ����ɵķ������
		//final double CM_PER_INCH = 2.54;
		double paperWidth = 8.5;
		double paperHeight = 11;
		System.out.println("Paper size in centimeters:"
				+ paperWidth * CM_PER_INCH + " by " + paperHeight * CM_PER_INCH);

	}

}
