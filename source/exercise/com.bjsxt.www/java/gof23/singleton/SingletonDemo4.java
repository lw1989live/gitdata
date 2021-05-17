/**
 * 静态内部类实现单例模式
 * 这种方式：线程安全，调用效率高，并且实现延时加载
 * @author liwang
 *
 */
public class SingletonDemo4 {
	// 类初始化时，没有初始化这个对象（有延时加载的优势）.加载类时，天然的是线程安全的
	private static class SingletonClassInstance {
		private static final SingletonDemo4 instance = new SingletonDemo4();
	}
	
	private SingletonDemo4() {
	}
	// 方法没有同步调用效率高
	public static SingletonDemo4 getInstance(){
		return SingletonClassInstance.instance;
	}
}
