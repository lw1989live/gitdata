/**
 * 
 */
package v1ch05.equals;

/**
 * 
 * @version 1.0 2017年12月15日
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
	 * @see v1ch05.equals.Employee#getSalary()
	 */
	@Override
	public double getSalary() {
		// TODO 自动生成的方法存根
		double baseSalary = super.getSalary();
		return baseSalary + bonus;
	}

	/**
	 * @param bonus 要设置的 bonus
	 */
	public void setBonus(double bonus) {
		this.bonus = bonus;
	}

	/* （非 Javadoc）
	 * @see java.lang.Object#hashCode()
	 */
	@Override
	public int hashCode() {
		return super.hashCode() + 17 * new Double(bonus).hashCode();
	}

	/* （非 Javadoc）
	 * @see java.lang.Object#equals(java.lang.Object)
	 */
	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (!super.equals(obj))
			return false;
		if (getClass() != obj.getClass())
			return false;
		Manager other = (Manager) obj;
		// super.equals checked that this and other belong to the same class
		return this.bonus == other.bonus;
	}

	/* （非 Javadoc）
	 * @see java.lang.Object#toString()
	 */
	@Override
	public String toString() {
		return super.toString() + "[bonus=" + bonus + "]";
	}
	
	
}
