/**
 * 工厂方法的实现
 * @author liwang
 */
public class BenzFanctory implements CarFanctoryMethod{
    @Override
    public Car createCar(){
        return new Benz();
    }
}
