/**
 * 工厂方法的实现
 * @author liwang
 */
public class AudiFanctory implements CarFanctoryMethod{
    @Override
    public Car createCar(){
        return new Audi();
    }
}
