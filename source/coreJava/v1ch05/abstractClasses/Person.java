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
	 * @param name 要设置的 name
	 */
	public void setName(String name) {
		this.name = name;
	}

}
