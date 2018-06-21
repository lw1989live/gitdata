/**
 * 
 */
package v1ch05.abstractClasses;

/**
 * 
 * @version 1.0 2017年12月14日
 * @author liwang
 *
 */
public class Student extends Person {
	private String major;
	
	
	/**
	 * @param name
	 * @param major
	 */
	public Student(String name, String major) {
		super(name);
		this.major = major;
	}


	/* （非 Javadoc）
	 * @see v1ch05.abstractClasses.Person#getDescription()
	 */
	@Override
	public String getDescription() {
		// TODO 自动生成的方法存根
		return "a student majorint in " + major;
	}

}
