public class Computer {
    protected Brand brand;

    public Computer(Brand brand) {
        this.brand = brand;
    }

    public void sale() {
        brand.sale();
    }
}

class Desktop extends Computer {

    public Desktop(Brand brand) {
        super(brand);
    }

    @Override
    public void sale() {
        // TODO Auto-generated method stub
        super.sale();
    }

}
