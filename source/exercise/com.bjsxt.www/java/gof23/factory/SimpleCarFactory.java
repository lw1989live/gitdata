/**
 * 简单工厂类的两种示例
 * @author liwang
 */
public class SimpleCarFactory {
    public static Car createCar(String type) {
        Car c;
        if("奥迪".equals(type)){
            c = new Audi();
        }else if("比亚迪".equals(type)){
            c = new Byd();
        }else{
            return null;
        }
        return c;
    }

    public static Car createAudi() {
        return new Audi();
    }

    public static Car createByd() {
        return new Byd();
    }


    
}
