/**
 * 
 */
package v1ch05.abstractClasses;

/**
 * 
 * @version 1.0 2017��12��14��
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


	/* ���� Javadoc��
	 * @see v1ch05.abstractClasses.Person#getDescription()
	 */
	@Override
	public String getDescription() {
		// TODO �Զ����ɵķ������
		return "a student majorint in " + major;
	}

}
