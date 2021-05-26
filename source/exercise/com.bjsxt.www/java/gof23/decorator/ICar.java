public interface ICar {
    void move();
}

class Car implements ICar {

    @Override
    public void move() {
        // TODO Auto-generated method stub
        System.out.println("车跑")
    }
    
}

class SuperCar implements ICar {
    protected Icar car;
    
    public SuperCar(Icar car) {
        super();
        this.car = car;
    }

    @Override
    public void move() {
        // TODO Auto-generated method stub
        car.move();
    }
    
}

class FlyCar extends SuperCar {

    public FlyCar(Icar car) {
        super(car);
    }
    public fly() {

    }
    @Override
    public void move() {
        // TODO Auto-generated method stub
        super.move();
        this.fly();
    }
    
    
}
