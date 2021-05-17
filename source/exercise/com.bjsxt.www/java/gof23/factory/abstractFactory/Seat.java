/**
 * 座椅接口和类
 */
public interface Seat {
    void message();
}

class LuxurySeat implements Seat{
    @Override
    public void message() {
        System.out.println("好座椅，可以自动按摩");
    }
}

class LowSeat implements Seat{
    @Override
    public void message() {
        System.out.println("普通座椅");
    }
}
