/**
 * 测试饿汉式单例模式（如何防止反射和反序列化漏洞）
 * @author liwang
 *
 */
public class SingletonDemo6  {
	// 类初始化时，立即加载这个对象（没有延时加载的优势）.加载类时，天然的是线程安全的
	private static SingletonDemo6 instance = new SingletonDemo6();		
	
	private SingletonDemo6() {
//		if(instance != null) {
//			throw new RuntimeException();
//		}
	}
	// 方法没有同步调用效率高
	public static SingletonDemo6 getInstance(){
		return instance;
	}
}
