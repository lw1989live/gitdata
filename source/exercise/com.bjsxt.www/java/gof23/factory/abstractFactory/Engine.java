/**
 * 发动机的接口和类
 */
public interface Engine {
    void run();
    void start();
}


class LuxuryEngine implements Engine{
    @Override
    public void run() {
        System.out.println("好发动机，转速高");
    }
    @Override
    public void start() {
        System.out.println("好发动机，启动快!可以自动启停");
    }
}

class LowEngine implements Engine{
    @Override
    public void run() {
        System.out.println("普通发动机，转速慢");
    }
    @Override
    public void start() {
        System.out.println("普通发动机，启动慢");
    }
}
