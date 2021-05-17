
public class Client {

	public static void main(String[] args) {
		// TODO 自动生成的方法存根
		SingletonDemo4 s1 = SingletonDemo4.getInstance();
		SingletonDemo4 s2 = SingletonDemo4.getInstance();
		
		System.out.println(s1);
		System.out.println(s2);
		
		System.out.println(SingletonDemo5.INSTANCE == SingletonDemo5.INSTANCE);
	}

}
