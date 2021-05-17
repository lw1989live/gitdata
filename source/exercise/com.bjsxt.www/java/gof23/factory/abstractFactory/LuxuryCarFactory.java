/**
 * 抽象工厂的产品族实现类
 */
public class LuxuryCarFactory implements CarFactory {
    @Override
    public Engine createEngine() {
        return new LuxuryEngine();
    }
    @Override
    public Seat createSeat() {
        return new LuxurySeat();
    }
    @Override
    public Tyre createTyre() {
        return new LuxuryTyre();
    }

}
