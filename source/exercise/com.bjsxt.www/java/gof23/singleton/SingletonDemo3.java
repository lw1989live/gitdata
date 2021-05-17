/**
 * 双重检测锁实现单例模式
 * @author liwang
 *
 */
public class SingletonDemo3 {
	// 
	private static SingletonDemo3 instance = null;		
	
	private SingletonDemo3() {
	}
	// 
	public static SingletonDemo3 getInstance(){
		if (instance == null) {
			SingletonDemo3 sc;
			sc = instance;
			synchronized (SingletonDemo3.class)
			{
				if (sc == null) {
					sc = new SingletonDemo3();
				}
			}
			instance = sc;
		}
		return instance;
	}
}
