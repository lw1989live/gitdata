import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.ObjectInputStream;
import java.io.ObjectOutput;
import java.io.ObjectOutputStream;
import java.lang.reflect.Constructor;
/**
 * 测试反射和反序列化破解单例模式
 * @author liwang
 *
 */
public class Client2 {

	public static void main(String[] args) throws Exception {
		// TODO 自动生成的方法存根
		SingletonDemo6 s1 = SingletonDemo6.getInstance();
		SingletonDemo6 s2 = SingletonDemo6.getInstance();
		
		System.out.println(s1);
		System.out.println(s2);

		// 通过反射的方式直接调用私有构造器
		// Class<SingletonDemo6> clazz = (Class<SingletonDemo6>) Class.forName("SingletonDemo6");
		// Constructor<SingletonDemo6> c = clazz.getDeclaredConstructor(null);
		
		// c.setAccessible(true);
		// SingletonDemo6 s3 = c.newInstance();
		// SingletonDemo6 s4 = c.newInstance();

		// System.out.println(s3);
		// System.out.println(s4);

		//通过反序列化的方式构造多个对象
		FileOutputStream fos = new FileOutputStream("a.txt");
		ObjectOutputStream oos = new ObjectOutputStream(fos);
		oos.writeObject(s1);
		oos.close();
		fos.close();

		ObjectInputStream ois = new ObjectInputStream(new FileInputStream("a.txt"));
		SingletonDemo6 s6 = (SingletonDemo6) ois.readObject();

		System.out.println(s6);

	}

}
