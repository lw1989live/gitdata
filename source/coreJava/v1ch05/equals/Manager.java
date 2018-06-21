/**
 * 
 */
package v1ch05.equals;

/**
 * 
 * @version 1.0 2017��12��15��
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
		// TODO �Զ����ɵĹ��캯�����
		this.bonus = 0;
	}

	/* ���� Javadoc��
	 * @see v1ch05.equals.Employee#getSalary()
	 */
	@Override
	public double getSalary() {
		// TODO �Զ����ɵķ������
		double baseSalary = super.getSalary();
		return baseSalary + bonus;
	}

	/**
	 * @param bonus Ҫ���õ� bonus
	 */
	public void setBonus(double bonus) {
		this.bonus = bonus;
	}

	/* ���� Javadoc��
	 * @see java.lang.Object#hashCode()
	 */
	@Override
	public int hashCode() {
		return super.hashCode() + 17 * new Double(bonus).hashCode();
	}

	/* ���� Javadoc��
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

	/* ���� Javadoc��
	 * @see java.lang.Object#toString()
	 */
	@Override
	public String toString() {
		return super.toString() + "[bonus=" + bonus + "]";
	}
	
	
}
