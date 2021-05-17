/**
 * 工厂方法的实现
 * @author liwang
 */
public class BydFanctory implements CarFanctoryMethod{
    @Override
    public Car createCar(){
        return new Byd();
    }
}
