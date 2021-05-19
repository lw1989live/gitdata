/**
 * 客户端 测试类
 */
public class Client {
    public static void main(String[] args) {
        Client c = new Client();
        Target t1 = new Adapter();
        Adaptee a = new Adaptee();
        Target t2 = new Adapter2(a);
        c.test1(t1);
        c.test1(t2);
    }

    public void test1(Target t) {
        t.handleReq();
    }
}
