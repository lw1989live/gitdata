public interface Brand {
    void sale();
}

class Leveon implements Brand {

    @Override
    public void sale() {
        // TODO Auto-generated method stub
        System.out.println("联想");
    }

}
