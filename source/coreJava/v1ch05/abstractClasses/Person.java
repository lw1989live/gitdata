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
public abstract class Person {
	public abstract String getDescription();
	private String name;
	
	public Person(String name)
	{
		this.name = name;
	}
	/**
	 * @return name
	 */
	public String getName() {
		return name;
	}
	/**
	 * @param name Ҫ���õ� name
	 */
	public void setName(String name) {
		this.name = name;
	}

}
