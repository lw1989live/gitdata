/**
 * 枚举实现单例模式（没有延时加载）,并且可以天然的防止反射和反序列化漏洞
 * @author liwang
 *
 */
public enum SingletonDemo5 {
	// 枚举元素本身就是单例模式
	INSTANCE;
	
	// 添加自己需要的操作
	public void singletonOperation(){

	}
}
