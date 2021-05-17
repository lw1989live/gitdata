/**
 * 测试工厂方法的调用
 * @author liwang
 */
public class Client02 {
    public static void main(String[] args) {

        Car c1 = new AudiFanctory().createCar();
        Car c2 = new BydFanctory().createCar();
        Car c3 = new BenzFanctory().createCar();

        c1.run();
        c2.run();
        c3.run();

    }
}
