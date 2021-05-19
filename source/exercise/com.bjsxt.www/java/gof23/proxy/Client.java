
import java.lang.reflect.Proxy;
/**
 * 测试静态代理和动态代理模式
 */
public class Client {
    public static void main(String[] args) {
        // 测试静态代理
        Star real = new RealStar();
        Star proxy = new ProxyStar(real);

		proxy.confer();
		proxy.signContract();
		proxy.bookTicket();
		proxy.sing();
		
		proxy.collectMoney();
        // 测试动态代理
        StarHandler handler = new StarHandler(real);
        Star proxyStar = (Star) Proxy.newProxyInstance(ClassLoader.getSystemClassLoader(), new Class[]{Star.class},handler);

		proxyStar.bookTicket();
        proxyStar.sing();

    }
}
