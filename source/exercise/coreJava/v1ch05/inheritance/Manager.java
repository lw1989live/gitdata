/**
 * 
 */
package v1ch05.inheritance;

/**
 *
 * @version 1.0 2017��12��14��
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
	 * @see v1ch05.Employee#getSalary()
	 */
	@Override
	public double getSalary() {
		// TODO �Զ����ɵķ������
		double baseSalary = super.getSalary();
		return baseSalary + this.bonus;
	}

	/**
	 * @param bonus Ҫ���õ� bonus
	 */
	public void setBonus(double bonus) {
		this.bonus = bonus;
	}

}
