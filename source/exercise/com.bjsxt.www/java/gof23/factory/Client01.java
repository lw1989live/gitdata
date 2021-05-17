/**
 * 两种简单工厂的调用
 * @author liwang
 */
public class Client01 {
    public static void main(String[] args) {
        // 没有工厂模式的情况下的调用
        // Car c1 = new Audi();
        // Car c2 = new Byd();

        Car c1 = SimpleCarFactory.createCar("奥迪");
        Car c2 = SimpleCarFactory.createByd();

        c1.run();
        c2.run();

    }
}
