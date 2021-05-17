/**
 * 轮胎的接口和类
 */
public interface Tyre {
    void revolve();
}

class LuxuryTyre implements Tyre {
    @Override
    public void revolve() {
        System.out.println("好轮胎，旋转不磨损");
    }
}

class LowTyre implements Tyre {
    @Override
    public void revolve() {
        System.out.println("普通轮胎，旋转磨损快");
    }
}
