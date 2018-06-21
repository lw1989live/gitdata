/**
 * 
 */
package v1ch05.inheritance;

/**
 *
 * @version 1.0 2017年12月14日
 * @author liwang
 *
 */
public class Manager extends Employee {
	private double bonus;

	/**
	 * @param name
	 * @param salary
	 * @param year
	 * @param month
	 * @param day
	 */
	public Manager(String name, double salary, int year, int month, int day) {
		super(name, salary, year, month, day);
		// TODO 自动生成的构造函数存根
		this.bonus = 0;
	}

	/* （非 Javadoc）
	 * @see v1ch05.Employee#getSalary()
	 */
	@Override
	public double getSalary() {
		// TODO 自动生成的方法存根
		double baseSalary = super.getSalary();
		return baseSalary + this.bonus;
	}

	/**
	 * @param bonus 要设置的 bonus
	 */
	public void setBonus(double bonus) {
		this.bonus = bonus;
	}

}
